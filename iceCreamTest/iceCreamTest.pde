//Kim Ash
//ice cream test

void setup()
{
  size(800, 800);
}

void draw()
{
  background(255);
  smooth();
  stroke(0);
  
  int i = 0;
  while(i<3)  //number of ellipses = 2^i
  {
    for(int d=20; d>0; d-=5)  //size of ellipses
    {
      ellipse(width/2, height/2, i*20, i*20);  //location needs to be changeable
    }
    i++;
  }
}
