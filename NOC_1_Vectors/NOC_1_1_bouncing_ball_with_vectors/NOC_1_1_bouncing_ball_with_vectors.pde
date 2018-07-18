Ball b;
void setup()
{
  size(600, 600, P2D);
  b = new Ball();
}

void draw()
{
  background(255, 1);
  b.move();
  b.bounce();
  b.display();
}
