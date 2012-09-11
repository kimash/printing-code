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
  drawCircle(width/2, height/2, 100);
}

void drawCircle(float x, float y, float r) 
{
  ellipse(x, y, r, r);
  //stop condition
  if (r >= 40) {
    drawCircle(x+r/2, y + (r*sqrt(3))/2, r/2);
    drawCircle(x-r/2, y + (r*sqrt(3))/2, r/2);
  }
}


