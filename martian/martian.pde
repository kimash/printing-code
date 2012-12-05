//Kim Ash
//Printing Code
//martian - creates generative book cover for Ray Bradbury's Martian Chronicles

import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;

PGraphics canvas;
int canvas_width = 5100;
int canvas_height = 7650;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

Letter [] ray;
//Letter [] bradbury;
//Letter [] the;
//Letter [] martian;
//Letter [] chronicles;
float distX = canvas_width/10;
//float distY = 5*distX/4;

void setup()
{ 
  size(510, 765);
  colorMode(HSB, 360, 100, 100, 100);
  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();
  ray = new Letter[3];
  
  canvas.beginDraw();
    canvas.colorMode(HSB, 360, 100, 100, 100);
    canvas.background(360, 0, 0);
    canvas.smooth();
    canvas.noFill();
    grid(canvas.width/30);
    
    //Ray
    canvas.stroke(42, 100, 100);
    canvas.strokeWeight(canvas.width/150);
    canvas.pushMatrix();
    canvas.translate(canvas.width/5, 0);
    for(int i=0; i<ray.length; i++)  {
      ray[i] = new Letter(1.25*i*canvas.width/10, canvas.height/10, distX);
    }
    ray[0].r();
    ray[1].a();
    ray[2].y();
    canvas.popMatrix();
    
    //stars
    canvas.stroke(0, 0, 100);
    canvas.strokeWeight(canvas.width/400);
    //randomSeed(20);
    for(int s=0; s<100; s++)
    {
      canvas.point(random(canvas.width), random(2*canvas.height/5));
    }
    
    //mountains
    canvas.pushMatrix();
    canvas.stroke(360, 100, 100);
    canvas.strokeWeight(canvas.width/150);
    canvas.translate(0, canvas.height/4);
    float noiseCount = 0;
    noiseDetail(1);
    for(int m=0; m<4; m++)
    {
      canvas.beginShape();
      canvas.translate(0, canvas.height/8);
      for(int i=0; i<canvas.width + 40; i+=100)
      {
        float ranY = noise(noiseCount);
        canvas.vertex(i, ranY * canvas.height/3);
        noiseCount += 0.12;
      }
      canvas.endShape();
    } 
    canvas.popMatrix();
  canvas.endDraw();
  
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;
  //displays canvas onscreen
  image(canvas, (width/2) - (resizedWidth/2), (height/2) - (resizedHeight/2), resizedWidth, resizedHeight);
  
  canvas.save("martian.tiff");
}


/* resizing function */
void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;
  
  if(ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}

//grid
void grid(float pageMargin)
{
  //bounding box for manuscript grid
  canvas.noFill();
  canvas.stroke(360, 100, 100, 100);  //change alpha value to see gridlines
  canvas.strokeWeight(canvas.width/500);
  canvas.rect(pageMargin, pageMargin, canvas.width - (2*pageMargin), canvas.height - (2*pageMargin));
}
