
import std.range;
import std.conv;
import std.stdio;
import math : Vector;
class SimulationBox
{
   Vector!int dimensions;
   float interaction_cutoff = 1.0f;
   int[][int] cell_assignment;
   int x_length = 0;
   int y_length = 0;
   int z_length = 0;


  this(Vector!int dim,  float interaction_cutoff){
    this.dimensions = dim;
    this.interaction_cutoff = interaction_cutoff;



  }

  this(int[3] dim,  float interaction_cutoff){
    this.dimensions = new Vector!int(dim);
    this.interaction_cutoff = interaction_cutoff;
  }

  void init_cell_list()
  {
    int offset = 0
    this.x_length = this.dimensions.values[0] / interaction_cutoff + 1;
    this.y_length = this.dimensions.values[1] / interaction_cutoff + 1;
    this.z_length = this.dimensions.values[2] / interaction_cutoff + 1;

    for (int x = 0; x < x_length; x++)
    {
      for (int y = 0; y < y_length; y++)
      {
        int low_offset = this.z_length * (x * y);
        for (int z = 0; z < this.z_length; z++)
        {
          offset = low_offset + z;
          this.cell_assignment[offset] = []
        }
      }
    }
  }

  void update_neighborhood()

  int[] get_neighbors(int[3] position, int r_distance)
  {



    int[] neighbors;
    int r = r_distance
    int l = r_distance * 2 + 1
    for (int x =0; x < l; x++)
    {
        for (int y =0; y < l; y++)
        {
          for (int z = 0; z < l; z++)
          {
              if (z*x*y*(x - l + 1)*(y - l + 1)*(z - l + 1) == 0)
              {
                  neighbors = neighbors ~ this.cell_assignment[ this.z_length*((x + position[0] - r) % this.x_length)*((y + position[1] - r) % this.y_length) + ((z + position[2] - r) % this.z_length)];
              }
          }
        }
    }
   return neighbors;
  }

  Vector!int getPosKey(Vector!float position){
      int[] npos = [0,0,0];

      foreach (index, value; position.values)
      {
        npos[index] = to!int(value / this.interaction_cutoff);
      }
      auto temp = new Vector!int(npos);
      return temp;
    }


  int[3] getPosKey(float[3] position){
    int[3] npos;
    foreach (index, value; position)
    {
      npos[index] = to!int(value / this.interaction_cutoff);
    }
    return npos;
  }



}
