//Kim Ash
//Printing Code
//draws an ice cream cone in black and white, using only rect, triangle, and ellipse

/*  Properties
_________________________________________________________________ */

PGraphics canvas;
int canvas_width = 3508;
int canvas_height = 4961;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

/*  Setup
_________________________________________________________________ */

void setup()
{ 
  size(1300, 850);
  background(30);
  
  canvas = createGraphics(canvas_width, canvas_height, P2D);
  
  calculateResizeRatio();
  
  canvas.beginDraw();
    canvas.background(255);
    canvas.smooth();
    canvas.stroke(0);
    canvas.strokeWeight(4);
    //cone
    canvas.fill(255);
    canvas.triangle(width/2 + 75, height/2, width/2 - 75, height/2, width/2, height/2 + 350);
    //ice cream
    canvas.fill(0);
    canvas.drawCircle(width/2, height/2 - 150, 150);
    //cone squares
    fill(255);
    int s = 24; 
    for(int i=0; i<2; i++){
      for(int j=0; j<3; j++){
        canvas.rect(width/2 + 30 - i*s - j*s, height/2 + 50 + j*s, s, s);
      }
    }
    
//    void drawCircle(float x, float y, float d) 
//    {
//      canvas.ellipse(x, y, d, d);
//    
//      if (d >= 90) {
//        canvas.drawCircle(x + d/3, y + (d*sqrt(3))/3, 3*d/4);
//        canvas.drawCircle(x - d/3, y + (d*sqrt(3))/3, 3*d/4);
//      }
//    }
  canvas.endDraw();
  
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;
  
  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);
  
  canvas.save("grab.png");
}

/*  Calculate resizing
_________________________________________________________________ */

void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;
  
  if(ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}

float drawCircle(float x, float y, float d) 
{
  ellipse(x, y, d, d);

  if (d >= 90) {
    drawCircle(x + d/3, y + (d*sqrt(3))/3, 3*d/4);
    drawCircle(x - d/3, y + (d*sqrt(3))/3, 3*d/4);
  }
}
