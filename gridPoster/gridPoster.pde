//Kim Ash
//Printing Code
//gridPoster - randomized grid, letter parameters adjust to column sizes

PGraphics canvas;
int canvas_width = 5100;
int canvas_height = 6600;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

//Grid grid;
//Letter z;
//Letter o;
//Letter n;
//Letter k;
//Letter e;
//Letter d;

Letter [] letters;

PVector [] letterpos;
PVector [] letterdist;

void setup()
{ 
  size(510, 660);
  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();
//  grid = new Grid(6, canvas.width/70);
  letters = new Letter[6];
  
  canvas.beginDraw();
    canvas.colorMode(HSB, 360, 100, 100);
    float h = random(360);
    canvas.background(h, random(100), random(100));
    gridfxn(6, canvas.width/35);
    canvas.smooth();
    canvas.strokeWeight(canvas.width/30);
    
    canvas.pushMatrix();
    //canvas.translate(canvas.width/10, canvas.height/9);
//    z = new Letter(0, 0, distX, distY);
//    o = new Letter(0 + 3*distX, 0, distX, distY);
//    n = new Letter(0 + 6*distX, 0, distX, distY);
//    k = new Letter(0 + 9*distX, 0, distX, distY);
//    e = new Letter(0 + 12*distX, 0, distX, distY);
//    d = new Letter(0 + 14*distX, 0, distX, distY);
    canvas.popMatrix();
    
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

//void keyPressed()
//{
//   grid.display(); 
//}

void gridfxn(int cols, float pageMargin)
{
  Column[] columns;
  float fullWidth = canvas.width - (2*pageMargin);
  float[] rands = new float[cols];
  float ranSum = 0;
  
  for(int i = 0; i < rands.length; i++)
  {
    // generate a number between 0 and 1
    rands[i] = random(1);
    // OPTIONAL! tweak the number to avoid too big a size difference
    if(rands[i] < 0.4)  rands[i] = 0.4;
    // add to the sum
    ranSum += rands[i];
  }
  
  // now divide each random number with its sum to normalize and multiply by full width
  for(int i = 0; i < rands.length; i++)
  {
     rands[i] = (rands[i] / ranSum) * fullWidth; 
  }
  columns = new Column[cols];
  float xPos = pageMargin;
  letterpos = new PVector[cols];
  letterdist = new PVector[cols];
    
  for(int i = 0; i < cols; i++)
  {
    columns[i] = new Column();
    columns[i].x = xPos;
    columns[i].y = pageMargin;
    columns[i].w = rands[i];
    columns[i].h = canvas.height - (2*pageMargin) - (random(1)*canvas.height);
    
    xPos += rands[i];
    
    //store parameters for drawing letters
//    letterpos[i] = (columns[i].x, columns[i].y);
//    letterdist[i] = ((columns[i].w)/2, columns[i].h); 
  }
  
  //bounding box
  canvas.noFill();
  canvas.stroke(0, 0, 100);
  canvas.strokeWeight(canvas.width/500);
  canvas.rect(pageMargin, pageMargin, canvas.width - (2*pageMargin), canvas.height - (2*pageMargin));
  
//  for(int i = 0; i < cols; i++)
//  {
//    canvas.rect(columns[i].x, columns[i].y, columns[i].w, columns[i].h);
////    letterpos[i] = new PVector(columns[i].x, columns[i].y);
////    letterdist[i] = new PVector((columns[i].w)/2, columns[i].h);
//  }
}
