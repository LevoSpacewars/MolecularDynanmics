import std.stdio;
import math: Vector;
void main()
{
auto v = new Vector!int(1,2,3,4);
auto b = new Vector!int(2,3,4,5);
v.dot(b);
}
