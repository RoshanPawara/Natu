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

  /* Function to take a random step */
  void walk()
  {
    int choice = int(random(4));
    if (choice == 0)
    {
      x++;
    } else if (choice == 1)
    { 
      x--;
    } else if (choice == 2)
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
