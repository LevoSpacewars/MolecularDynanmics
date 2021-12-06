
import std.range;
import std.conv;
import std.stdio;
import math : Vector;
class SimulationBox
{
   Vector!int dimensions;
   float interaction_cutoff = 1.0f;

  this(Vector!int dim,  float interaction_cutoff){
    this.dimensions = dim;
    this.interaction_cutoff = interaction_cutoff;
  }

  this(int[3] dim,  float interaction_cutoff){
    this.dimensions = new Vector!int(dim);
    this.interaction_cutoff = interaction_cutoff;
  }





  Vector!int getPosKey(Vector!float position){
    int[3] npos;

    foreach (index, value; position.values)
    {
      npos[index] = to!int(value / this.interaction_cutoff);
    }
    auto temp = new Vector!int(npos);
    writeln(temp.values);
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
