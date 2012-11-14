//Kim Ash
//Printing Code
//MBwrap - uses repetition to make a wrapping paper pattern for Makerbot

PGraphics canvas;
int canvas_width = 5100;
int canvas_height = 5100;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

float distX = canvas_width/15;
float distY = 2.25*distX;

Mpattern m1;
Mpattern m2;

void setup()
{ 
  size(510, 510);
  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();
  
  canvas.beginDraw();
    canvas.colorMode(HSB, 360, 100, 100);
    canvas.background(360);
    canvas.smooth();
    canvas.fill(0, 100, 100);
    canvas.stroke(0, 100, 50);
    canvas.strokeWeight(canvas.width/30);
    
    m1 = new Mpattern(canvas.width/2, canvas.height/2, distX, distY);
    m1.m();
    canvas.stroke(0, 100, 100);
    canvas.translate(distX/8, 0);
    m2 = new Mpattern(canvas.width/2, canvas.height/2, distX, distY);
    m2.m();
  canvas.endDraw();
  
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;
  //displays canvas onscreen
  image(canvas, (width/2) - (resizedWidth/2), (height/2) - (resizedHeight/2), resizedWidth, resizedHeight);
  
  canvas.save("MBwrap.tiff");
}


/* resizing function */
void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;
  
  if(ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}
