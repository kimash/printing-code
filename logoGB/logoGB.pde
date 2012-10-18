//Kim Ash
//Printing Code
//logoGB - creates a generative logo for Gogol Bordello

PGraphics canvas;
int canvas_width = 5100;
int canvas_height = 3825;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

Letter [] gogol;
Letter [] bordello;

void setup()
{ 
  size(510, 383);
  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();
  gogol = new Letter[5];
  bordello = new Letter[8]; 
  
  canvas.beginDraw();
    canvas.colorMode(HSB, 360, 100, 100);
    canvas.background(360, 100, 0);
    grid(canvas.width/50);
    canvas.smooth();
    canvas.noFill();
    canvas.strokeCap(PROJECT);
    canvas.strokeJoin(BEVEL);
    canvas.stroke(random(360), random(70,100), 100);
    canvas.strokeWeight(canvas.height/37);
    
    //Gogol
    canvas.pushMatrix();
    canvas.translate(canvas.width/5, 0);
    for(int i=0; i<5; i++)  {
      gogol[i] = new Letter(1.25*i*canvas.width/10, canvas.height/4 + random(canvas.height/8), canvas.width/10, canvas.height/8);
    }
    gogol[0].g();
    gogol[1].o();
    gogol[2].g();
    gogol[3].o();
    gogol[4].l();
    canvas.popMatrix();
    
    //Bordello
    canvas.pushMatrix();
    canvas.translate(0, canvas.height/4);
    for(int i=0; i<8; i++)  {
        bordello[i] = new Letter(1.25*i*canvas.width/10, canvas.height/4 + random(canvas.height/8), canvas.width/10, canvas.height/8);
    }
    bordello[0].b();
    bordello[1].o();
    bordello[2].r();
    bordello[3].d();
    bordello[4].e();
    bordello[5].l();
    bordello[6].l();
    bordello[7].o();
    canvas.popMatrix();
    
    //stripes
    for(int i=0; i<=canvas.width; i+=(canvas.width/140)){
      canvas.stroke(360, 100, 0);
      canvas.strokeWeight(canvas.height/200);
      canvas.line(i, 0, i, canvas.height);
    }
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

void grid(float pageMargin)
{
  //bounding box for manuscript grid
  canvas.noFill();
  canvas.stroke(360, 100, 100, 0);  //change alpha value to see gridlines
  canvas.strokeWeight(canvas.width/500);
  canvas.rect(pageMargin, pageMargin, canvas.width - (2*pageMargin), canvas.height - (2*pageMargin));
}
