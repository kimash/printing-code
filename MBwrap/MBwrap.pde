//Kim Ash
//Printing Code
//MBwrap - uses repetition to make a wrapping paper pattern for Makerbot

PGraphics canvas;
int canvas_width = 5100;
int canvas_height = 6600;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

//Mpattern m, m2;
ArrayList <Mpattern> pattern;
float theta = 0;
float r = 0;

void setup()
{ 
  size(510, 660);
  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();
  
  pattern = new ArrayList<Mpattern>();
  
  canvas.beginDraw();
    canvas.colorMode(HSB, 360, 100, 100);
    canvas.background(360);
    canvas.smooth();
    spiral();
//    m = new Mpattern(canvas.width/2, canvas.height/2, canvas.width/50);
//    m.displayR();
//    
//    m2 = new Mpattern(canvas.width/4, canvas.height/4, canvas.width/50);
//    m2.displayG();
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


//tiling function
void spiral()
{
  while (r < canvas.width)
  {
    float spX = r*cos(theta);
    float spY = r*sin(theta);
    float msize = canvas.width/75;
    
    pattern.add(new Mpattern(spX + canvas.width/2, spY + canvas.height/2, msize));
    
    for(int i=0; i<pattern.size()-1; i++)  {
      if(i % 2 == 0)  {
        pattern.get(i).displayG();
      }
      else  {
         pattern.get(i).displayR();
      }
    }
    
    theta += 1;
    r += canvas.width/350;
  }
}
