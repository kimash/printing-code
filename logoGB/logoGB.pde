//Kim Ash
//Printing Code
//logoGB - creates a generative logo for Gogol Bordello

PGraphics canvas;
int canvas_width = 5100;
int canvas_height = 2550;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

//Letter [] gogol;
//Letter [] bordello;
Letter a;

void setup()
{ 
  size(510, 255);
  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();
  //gogol = new Letter[5];
  //bordello = new Letter[8];
  a = new Letter(canvas.width/3, canvas.height/3, canvas.width/10, canvas.height/2); 
  
  canvas.beginDraw();
    canvas.colorMode(HSB, 360, 100, 100);
    canvas.background(360);
    canvas.smooth();
    canvas.noFill();
    canvas.stroke(32, 86, 99);
    canvas.strokeWeight(canvas.height/30);
    
    canvas.pushMatrix();
    //canvas.translate(canvas.width/10, canvas.height/9);
    //gogol
    a.o();
    canvas.popMatrix();
    
    canvas.pushMatrix();
    //canvas.translate(canvas.width/10, canvas.height/9);
    //bordello
    canvas.popMatrix();
    
  canvas.endDraw();
  
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;
  //displays canvas onscreen
  image(canvas, (width/2) - (resizedWidth/2), (height/2) - (resizedHeight/2), resizedWidth, resizedHeight);
  
  canvas.save("logoGB.tiff");
}


/* resizing function */
void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;
  
  if(ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}
