//Kim Ash
//Printing Code
//martian - creates generative book cover for Ray Bradbury's Martian Chronicles

PGraphics canvas;
int canvas_width = 5100;
int canvas_height = 7650;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

void setup()
{ 
  size(510, 765);
  colorMode(HSB, 360, 100, 100, 100);
  canvas = createGraphics(canvas_width, canvas_height);
  
  calculateResizeRatio();
  
  canvas.beginDraw();
    canvas.colorMode(HSB, 360, 100, 100, 100);
    //canvas.background(360, 0, 100);
    canvas.smooth();
    canvas.noFill();
    
  canvas.endDraw();
  
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;
  //displays canvas onscreen
  image(canvas, (width/2) - (resizedWidth/2), (height/2) - (resizedHeight/2), resizedWidth, resizedHeight);
  
  canvas.save("olivetti.tiff");
}


/* resizing function */
void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;
  
  if(ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}
