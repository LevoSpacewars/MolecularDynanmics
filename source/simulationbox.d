import math : Vector;
import std.range : enumerate;
import std.conv;
class SimulationBox
{
  Vector!int dimensions;
  float interaction_cutoff = 1;

  this(Vector!int dim,  float interaction_cutoff){
    this.dimensions = dim;
    this.interaction_cutoff = interaction_cutoff;
  }

  this(int[3] dim,  float interaction_cutoff){
    this.dimensions = Vector!int(dim);
    this.interaction_cutoff = interaction_cutoff;
  }





  Vector!int getPosKey(Vector!float position){
    int[3] npos;

    foreach (index, element; position.values.enumerate())
    {
      npos[index] = (element / this.interaction_cutoff).to!int;
    }
    return Vector!int(npos);
  }

  int[3] getPosKey(float[3] position){
    int[3] npos;
    foreach (index, element; position.enumerate())
    {
      npos[index] = (element / this.interaction_cutoff).to!int;
    }
    return npos;
  }



  unittest
  {
    SimulationBox simbox = new SimulationBox([100,100,100],10.0f);
    auto key = simbox.getPosKey(10.0f, 11.0f, 3.0f);
    writeln(key)
  }
}
