import java.util.Random;
Random generator;
float standard_deviation;
float mean;

void setup()
{
  size(800, 800);
  background(255);
  generator          = new Random();
  standard_deviation = 60;
  mean               = width/2;
}

void draw()
{
  float value = (float)generator.nextGaussian();
  //println(value);
  value *= standard_deviation;
  value += mean;
  noStroke();
  fill(0, 10);
  ellipse(value, height/2, 15, 15);
}
