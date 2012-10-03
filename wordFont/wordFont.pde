//Kim Ash
//Printing Code
//wordFont - typeface based on rule system

PGraphics canvas;
int canvas_width = 5100;
int canvas_height = 5100;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

//Letter m;

void setup()
{ 
  size(510, 510);
   
  canvas = createGraphics(canvas_width, canvas_height);
  
  calculateResizeRatio();
  
  canvas.beginDraw();
    //canvas.colorMode(HSB, 360, 100, 100);
    //float h = random(100);
    canvas.background(255);  //(360);
    canvas.smooth();
    //canvas.noFill();
    canvas.fill(0);
    //canvas.noStroke();
    canvas.stroke(0);
    canvas.strokeWeight(height/40);
    
//    canvas.pushMatrix();
//    canvas.beginShape();
//    canvas.endShape();
//    canvas.popMatrix();

    
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
