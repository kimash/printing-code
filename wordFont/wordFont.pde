//Kim Ash
//Printing Code
//wordFont - typeface based on rule system

PGraphics canvas;
int canvas_width = 5100;
int canvas_height = 2550;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

Letter m;
Letter u;
Letter f1;
Letter f2;
Letter i;
Letter n;

float distX = canvas_width/20;
float distY = 8*distX;

void setup()
{ 
  size(510, 255);
  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();
  
  canvas.beginDraw();
    canvas.colorMode(HSB, 360, 100, 100);
    canvas.background(360);
    canvas.smooth();
    canvas.fill(32, 86, 99);
    canvas.stroke(32, 86, 99);
    canvas.strokeWeight(canvas.height/30);
    
    canvas.pushMatrix();
    canvas.translate(canvas.width/10, canvas.height/9);
    m = new Letter(0, 0, distX, distY);
    u = new Letter(0 + 3*distX, 0, distX, distY);
    f1 = new Letter(0 + 6*distX, 0, distX, distY);
    i = new Letter(0 + 9*distX, 0, distX, distY);
    n = new Letter(0 + 11*distX, 0, distX, distY);
    f2 = new Letter(0 + 14*distX, 0, distX, distY);
    
    m.g();
    u.u();
    f1.f();
    i.i();
    n.n();
    f2.f();
    canvas.popMatrix();
    
  canvas.endDraw();
  
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;
  //displays canvas onscreen
  image(canvas, (width/2) - (resizedWidth/2), (height/2) - (resizedHeight/2), resizedWidth, resizedHeight);
  
  canvas.save("font.tiff");
}


/* resizing function */
void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;
  
  if(ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}
