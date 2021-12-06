import std.stdio;
import math: Vector;
import simulationbox: SimulationBox;
void main()
{
auto v = new Vector!int(1,2,3,4);
auto b = new Vector!int(2,3,4,5);
v.dot(b);
writeln(v.prt());

auto dimensions = new Vector!int(10,20,30);
SimulationBox box = new SimulationBox(dimensions, 1);


float j =2.5;
auto nvec = new Vector!float(j,j,j);


Vector!int coord = box.getPosKey(nvec);
writeln(coord.values);

}
