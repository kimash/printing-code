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
  drawCircle(width/2, height/2 - 150, 150);  //ice cream
  
  fill(255);
  //triangle(
}

void drawCircle(float x, float y, float d) 
{
  ellipse(x, y, d, d);

  if (d >= 90) {
    drawCircle(x+d/3, y + (d*sqrt(3))/3, 3*d/4);
    drawCircle(x-d/3, y + (d*sqrt(3))/3, 3*d/4);
  }
}



