import std.stdio;
import std.conv;
class Vector(T)
  {
    T[] values;
    T[] nvalues;
    int length = 0;
    this(T[] args ...){
      this.values = args;
      this.length = args.length;
      this.nvalues = args;
    }


    Vector!T dot(Vector!T vec)
    {


      for (int i = 0; i < vec.length; i++)
      {
        T v = this.values[i] * vec.values[i];
        this.nvalues[i] = v;
      }

      writeln(nvalues);
      return new Vector!T(nvalues);

    }


    string prt()
    {

      string output = " ";
      int i = -1;
      foreach (element; this.values)
      {

        output = output ~ to!string(element);
        output = output ~ " ";
      }
      return output;
    }



  }
