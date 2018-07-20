Ball b;
void setup()
{
  size(800, 600, P2D);
  b = new Ball();
}

void draw()
{
  background(255);
  PVector gravity = new PVector(0, 0.8);

  b.move();
  b.applyForce(gravity);
  b.checkEdges();
  b.show();
}
