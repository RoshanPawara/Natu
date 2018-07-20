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
  PVector wind = new PVector(0.2, 0);
  b.move();
  b.applyForce(gravity);
  if (mousePressed)
  {
    b.applyForce(wind);
  }
  b.checkEdges();
  b.show();

  fill(0);
  text("Click to apply wind.", 10, 20);
}
