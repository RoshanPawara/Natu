Ball b;
void setup()
{
  size(800, 600, P2D);
  b = new Ball();
}

void draw()
{
  background(255);
  b.move();
  b.edges();
  b.show();
}
