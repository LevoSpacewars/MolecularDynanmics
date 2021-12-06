import std.range, std.stdio;
class test(T)
{
    T[] x;
      this(T[] args ...){
		this.x = args;
      }

    string prnt()
    {

        foreach(index, value; x.enumerate())
        {
            writeln(index, " " , value);
        }
        return "done";

    }
}
class inter
{
 	float v;
    this(float value)
    {
        this.v = value;
    }

    test!int input(test!float t)
        {

            int[] o;
            int inside = 0;
            foreach (ind, element; t.x.enumerate)
            {
                inside = to!int(element/this.v);
                writeln(inside);
                o = o ~ inside;
            }
            return new test!int(o);
        }


}

void main()
{
    import std.algorithm, std.stdio;
    import std.range;
	import std.conv;

    float x = 1.623f;
    x.to!int.writeln;
    test!int t = new test!int(1,2,3,4);
    writeln(t.prnt());

    inter a = new inter(10);
    writeln("test");
    auto i = a.input(t);
    writeln(i.x);


}
