class Ball
{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;

  Ball()
  {
    location     = new PVector(width/2, height/2);
    velocity     = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    mass         = random(0.5, 4);
  }

  void checkEdges()
  {
    if (location.x > width)
    {
      location.x = width;
      velocity.x *= -1;
    } else if (location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    }
    if (location.y > height) {
      location.y = height;
      velocity.y *= -1;
    }
  }

  void applyForce(PVector force)
  {
    PVector acc = PVector.div(force, mass);
    acceleration.add(acc);
  }

  void move()
  {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);//avoiding adding up of acceleration to previous value every frame
  }

  void show()
  {
    stroke(0);
    strokeWeight(2);
    fill(8, 3, 109, 80);
    ellipse(location.x, location.y, mass*20, mass*20);
  }
}
