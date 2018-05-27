class Walker
{
  float x;
  float y;

  /* Constructor initializes the object in the centre of the screen*/
  Walker()
  {
    x = width/2;
    y = height/2;
  }

  /* Function to take a random step based on probablity */
  void walk()
  {
    float choice = random(1);
    if (choice < 0.4) // 40% to right
    {
      x++;
    } else if (choice < 0.6) // 20% to left
    { 
      x--;
    } else if (choice < 0.7) // 10% to bottom
    { 
      y++;
    } else
    {
      y--;
    }

    /* constrain() prevents the random walker from going outside the screen */
    constrain(x, 0, width-1);
    constrain(y, 0, height-1);
  }

  /* Function to display the object */
  void display()
  {
    point(x, y);
  }
}
