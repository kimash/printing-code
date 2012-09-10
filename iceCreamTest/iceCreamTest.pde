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
  
}

void multCircle(float posX, float posY, float r, int n)  //n = # of times to recurse
{
  ellipse(posX, posY, r, r);
  
  if( ) {  //need exit condition w.r.t. n
    multCircle(posX + (r/2), posY - (r*sqrt(3))/2), r/2, r/2);
    multCircle(posX - (r/2), posY - (r*sqrt(3))/2, r/2, r/2);
    n++;
  }
}
