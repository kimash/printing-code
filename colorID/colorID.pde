//Kim Ash
//Printing Code
//Identity/Color - abstract representation of my identity using randomized computational color

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
  
  canvas.beginDraw();
    canvas.colorMode(HSB, 360, 100, 100);
    float h = random(100);
    canvas.background(h, random(100), random(100));
    canvas.smooth();
    canvas.noFill();
    
    //integral shapes
    canvas.stroke(((h+240) % 360), 100, 100);
    canvas.strokeWeight(height/30);
    canvas.beginShape();
    for(int i=2; i<10; i++)  { 
       canvas.bezier(0, canvas.height/3, (canvas.width/10)/i, 4*canvas.height/8-canvas.height/3*i, 8*canvas.width/10, 4*canvas.height/8 + canvas.height/3*i, canvas.width, 2*canvas.height/3);
    }
    canvas.endShape();
    
    //spangles
    randomSeed(31);
    canvas.stroke(((h+120) % 360), 100, 100);
    for(int i=0; i<23; i++) {
      canvas.rect(random(canvas.width/2-canvas.width/15, canvas.width), random(2*canvas.height/3-4*canvas.width/50), canvas.width/50, canvas.width/50);
      canvas.ellipse(random(canvas.width/2-canvas.width/15, canvas.width), random(2*canvas.height/3), canvas.width/50, canvas.width/50);
    }
    
    for(int i=0; i<23; i++) {
      canvas.rect(random(canvas.width/2-canvas.width/15), random(canvas.height/3, canvas.height), canvas.width/50, canvas.width/50);
      canvas.ellipse(random(canvas.width/2-canvas.width/15), random(canvas.height/3, canvas.height), canvas.width/50, canvas.width/50);
    }
  canvas.endDraw();
  
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;
  //displays canvas onscreen
  image(canvas, (width/2) - (resizedWidth/2), (height/2) - (resizedHeight/2), resizedWidth, resizedHeight);
  
  canvas.save("colorID.tiff");
}


/* resizing function */
void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;
  
  if(ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}
