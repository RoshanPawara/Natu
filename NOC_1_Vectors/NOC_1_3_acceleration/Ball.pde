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
    acceleration = PVector.random2D();
    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(6);
  }

  void edges()
  {
    if (location.x>width) {
      location.x=0;
    }
    if (location.x<0) {
      location.x=width;
    }

    if (location.y>height) {
      location.y=0;
    }
    if (location.y<0) {
      location.y=height;
    }
  }
  
  void show()
  {
    stroke(0);
    fill(200,255,10);
    ellipse(location.x,location.y,40,40);
  }
}
