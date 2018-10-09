Bacteria[] bob;
int i;
void setup()
{
  background(0);
  bob = new Bacteria[100];
  size(600,600);
  for( i = 0; i < 100; i++)
  {
    bob[i] = new Bacteria();
  }
}
void draw()
{
  //background(0);
  for(int i =0; i < bob.length; i++)
  {
    bob[i].show();
    bob[i].walk();
  }
}
void mousePressed()
{
  background(0);
  i = 0;
}

class Bacteria
{
  int myX,myY;
  Bacteria()
  {
    myX = 300;
    myY = 300;
  }
  void walk()
  {
  int direction = (int)(Math.random()*4);
  if(direction == 0)
  {
    myX = myX + 5; 
  }
  else if(direction == 1)
  {
    myX = myX - 5; 
  }
  else if(direction == 2)
  {
    myY = myY + 5; 
  }
  else 
  {
    myY = myY - 5; 
  }
  }
  void show()
  {
    noStroke();
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    ellipse(myX,myY,10,10);
  }
}

