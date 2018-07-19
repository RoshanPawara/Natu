class Ball
{
  PVector location;
  PVector velocity;
  Ball()
  {
    location = new PVector(width/2, height/2);
    velocity = new PVector(2, 5);
  }

  void move()
  {
    location.add(velocity);
  }

  void bounce()
  {
    if ((location.x > width) || (location.x < 0)) {
      velocity.x*=-1;
    }
    if ((location.y > height) || (location.y < 0)) {
      velocity.y*=-1;
    }
  }

  void display()
  {
    stroke(0);
    strokeWeight(2);
    fill(227,5,210);
    ellipse(location.x, location.y, 48, 48);
  }
}
