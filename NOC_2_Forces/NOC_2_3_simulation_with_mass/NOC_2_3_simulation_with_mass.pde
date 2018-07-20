Ball[] balls = new Ball[5];

void setup()
{
  size(800, 500, P2D);
  for (int i = 0; i < balls.length; i++)
  {
    balls[i] = new Ball();
  }
}

void draw()
{
  background(255);
  for (Ball b : balls)
  {
    PVector gravity = new PVector(0, 0.3);
    gravity.mult(b.mass);// hack to apply same gravity to every ball
    b.applyForce(gravity);

    if (mousePressed)
    {
      PVector wind = new PVector(0.4, 0);
      b.applyForce(wind);
    }

    b.move();
    b.checkEdges();
    b.show();
  }
  fill(0);
  text("Click to apply wind.", 10, 20);
}
