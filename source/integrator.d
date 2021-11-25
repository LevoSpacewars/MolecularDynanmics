
class Integrator
{
    float dt = 1;
    float constant = 1;

    string output_path = "./";

    float[3][] positions; // move positions into simulationbox
    float[3][] velocities; // handle vel and accel in here
    float[3][] accel;
    float[3][] naccel;
    float[1][] mass; //?
    float[1][] charge; //?
    int  [2][] bonds; //?




    this(Vector!Atom atoms)
    {
      // decompose atoms into several matricies for rapid retrieval

      foreach (Atoms atom; atoms)
      {

      }


    }
}
