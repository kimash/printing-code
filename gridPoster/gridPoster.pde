//Kim Ash
//Printing Code
//gridPoster - randomized grid, letter parameters adjust to column sizes

PGraphics canvas;
int canvas_width = 5100;
int canvas_height = 6600;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

void setup()
{ 
  size(510, 660);
  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();
  Grid grid = new Grid(5, canvas.width/70);
  
  canvas.beginDraw();
    canvas.colorMode(HSB, 360, 100, 100);
    float h = random(360);
    canvas.background(h, random(100), random(100));
    canvas.smooth();
    canvas.fill(((h+240) % 360), 100, 100);
    canvas.stroke(((h+120) % 360), 100, 100);
    canvas.strokeWeight(canvas.width/30);
    
    canvas.pushMatrix();
    canvas.translate(canvas.width/10, canvas.height/9);
    //put letters here
    canvas.popMatrix();
//    if(keyPressed){
//       grid.display(); 
//    }
    grid.display();
  canvas.endDraw();
  
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;
  //displays canvas onscreen
  image(canvas, (width/2) - (resizedWidth/2), (height/2) - (resizedHeight/2), resizedWidth, resizedHeight);
  

  canvas.save("gridPoster.tiff");
}

/* resizing function */
void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;
  
  if(ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}
