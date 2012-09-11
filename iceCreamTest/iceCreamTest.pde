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
  fill(0);
  drawCircle(width/2, height/2, 150);
}

void drawCircle(float x, float y, float r) 
{
  ellipse(x, y, r, r);

  if (r >= 90) {
    drawCircle(x+r/3, y + (r*sqrt(3))/3, 3*r/4);
    drawCircle(x-r/3, y + (r*sqrt(3))/3, 3*r/4);
  }
}


