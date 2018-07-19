class Ball
{
  PVector location;
  PVector velocity;
  PVector acceleration;

  Ball()
  {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }

  void move()
  {
    PVector mouse = new PVector(mouseX, mouseY);
    mouse.sub(location);

    if (mousePressed)
    {
      mouse.setMag(0.1);
    } else
    {
      mouse.setMag(0.02);
    }

    acceleration = mouse;
    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(4);
  }

  void show()
  {
    stroke(0);
    fill(200, 255, 10);
    ellipse(location.x, location.y, 40, 40);
  }
}
