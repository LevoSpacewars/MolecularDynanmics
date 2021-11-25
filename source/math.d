import std.stdio;
class Vector(T)
  {
    T[] values;
    int length = 0;
    this(T[] args ...){
      this.values = args;
      this.length = args.length;
    }


    Vector!T dot(Vector!T vec)
    {

      T[vec.length] nvalues;



      for (int i = 0; i < vec.length; i++)
      {
        T v = this.values[i] * vec.values[i];
        nvalues[i] = v;
      }

      writeln(nvalues);
      return new Vector!T(nvalues);

    }

  }
