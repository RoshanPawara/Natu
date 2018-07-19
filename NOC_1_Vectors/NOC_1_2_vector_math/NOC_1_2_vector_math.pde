void setup()
{
  size(800, 800);
}

void draw()
{
  background(127);

  PVector mouse = new PVector(mouseX, mouseY);
  PVector centre = new PVector(width/2, width/2);

  mouse.sub(centre);
  float m = mouse.mag();

  mouse.setMag(50); // normalize and then scale to 50;

  translate(width/2, height/2);

  stroke(0);
  strokeWeight(2);
  line(0, 0, mouse.x, mouse.y);

  fill(255, 0, 0);
  rect(0, 0, m, 10);
}
