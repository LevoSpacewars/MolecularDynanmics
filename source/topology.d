

class Atom
{
  Vector!float pos;
  Vector!float vel;
  Vector!float acc;
  Vector!float nacc;
  Vector!int bonds;
  Vector!int bond_type;
  Vector!float bondl;
  float charge = 0;
  float mass = 1
  string name = "Atom"


  this()
  {
    this.pos = new Vector!float(0,0,0);
    this.vel = new Vector!float(0,0,0);
    this.acc = new Vector!float(0,0,0);
    this.nacc = new Vector!float(0,0,0);
    this.bonds = new Vector!int();
    this.bondl = new Vector!int();
  }




}
