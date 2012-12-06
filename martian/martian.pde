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
Letter [] bradbury;
Letter [] the;
Letter [] martian;
Letter [] chronicles;
float name = canvas_width/19;
float title = canvas_width/15;

void setup()
{ 
  size(510, 765);
  colorMode(HSB, 1, 1, 1);
  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();
  ray = new Letter[3];
  bradbury = new Letter[8];
  the = new Letter[3];
  martian = new Letter[7];
  chronicles = new Letter[10];
  
  canvas.beginDraw();
    canvas.colorMode(HSB, 1, 1, 1);
    TColor col = TColor.newHSV(.04, .98, .98);
    ColorTheoryStrategy rcomp = new RightSplitComplementaryStrategy();
    ColorList rcompList = ColorList.createUsingStrategy(rcomp, col);
    TColor back = rcompList.get(3);
    canvas.background(back.hue(), back.saturation(), back.brightness());
    canvas.smooth();
    canvas.noFill();
    TColor authorC = rcompList.get(4);
    canvas.stroke(authorC.hue(), authorC.saturation(), authorC.brightness());
    canvas.strokeWeight(canvas.width/200);
    
    //author
    //Ray
    canvas.strokeWeight(canvas.width/150);
    canvas.pushMatrix();
      canvas.translate(2.3*canvas.width/30, canvas.width/15);
      canvas.pushMatrix();
      canvas.translate(canvas.width/15, 0);
      for(int i=0; i<ray.length; i++)  {
        ray[i] = new Letter(i*canvas.width/15, 0, name);
      }
      ray[0].r();
      ray[1].a();
      ray[2].y();
      canvas.popMatrix();
      
      //Bradbury
      canvas.pushMatrix();
      canvas.translate(5*canvas.width/15, 0);
      for(int i=0; i<bradbury.length; i++)  {
        bradbury[i] = new Letter(i*canvas.width/15, 0, name);
      }
      bradbury[0].b();
      bradbury[1].r();
      bradbury[2].a();
      bradbury[3].d();
      bradbury[4].b();
      bradbury[5].u();
      bradbury[6].r();
      bradbury[7].y();
      canvas.popMatrix();
    canvas.popMatrix();
    
    //title
    TColor titleC = rcompList.get(5);
    canvas.stroke(titleC.hue(), titleC.saturation(), titleC.brightness());
    //The
    canvas.pushMatrix();
    canvas.translate(21*canvas.width/30, 2.5*canvas.height/15);
    for(int i=0; i<the.length; i++)  {
      the[i] = new Letter(1.2*i*canvas.width/15, 0, title);
    }
    the[0].t();
    the[1].h();
    the[2].e();
    canvas.popMatrix();
    
    //Martian
    canvas.pushMatrix();
    canvas.translate(5.71*canvas.width/15, 3.5*canvas.height/15);
    for(int i=0; i<martian.length; i++)  {
      martian[i] = new Letter(1.2*i*canvas.width/15, 0, title);
    }
    martian[0].m();
    martian[1].a();
    martian[2].r();
    martian[3].t();
    martian[4].i();
    martian[5].a();
    martian[6].n();
    canvas.popMatrix();
    
    //Chronicles
    canvas.pushMatrix();
    canvas.translate(2*canvas.width/15, 4.5*canvas.height/15);
    for(int i=0; i<chronicles.length; i++)  {
      chronicles[i] = new Letter(1.2*i*canvas.width/15, 0, title);
    }
    chronicles[0].c();
    chronicles[1].h();
    chronicles[2].r();
    chronicles[3].o();
    chronicles[4].n();
    chronicles[5].i();
    chronicles[6].c();
    chronicles[7].l();
    chronicles[8].e();
    chronicles[9].s();
    canvas.popMatrix();
    
    //mountains
    ColorTheoryStrategy s = new AnalogousStrategy();
    ColorList colors = ColorList.createUsingStrategy(s, col);
    
    canvas.pushMatrix();
    canvas.strokeWeight(canvas.width/50);  //150
    canvas.translate(0, canvas.height/4);
    float noiseCount = 0;
    noiseDetail(1);
    for(int m=1; m<5; m++)
    {
      TColor c = colors.get(m);
      canvas.stroke(c.hue(), c.saturation(), c.brightness());
      canvas.beginShape();
      canvas.translate(0, canvas.height/8);
      for(int i=0; i<canvas.width + 40; i+=100)
      {
        float ranY = noise(noiseCount);
        canvas.vertex(i, ranY*canvas.height/3);
        //if(i%2 == 0)  {
          canvas.strokeWeight(canvas.width/150);
          canvas.line(i, ranY*canvas.height/3, i, canvas.height);
       // }
        noiseCount += 0.12;
        canvas.strokeWeight(canvas.width/50);
      }
      canvas.endShape();
    } 
    canvas.popMatrix();
    grid(canvas.width/15);
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
  canvas.stroke(0.4, 1, 1, 100);  //change alpha value to see gridlines
  canvas.strokeWeight(canvas.width/300);
  canvas.rect(pageMargin, pageMargin, canvas.width - (2*pageMargin), canvas.height - (2*pageMargin));
  canvas.line(2*pageMargin, pageMargin, 2*pageMargin, canvas.height-(pageMargin));
  canvas.line(canvas.width-2*pageMargin, pageMargin, canvas.width-2*pageMargin, canvas.height-pageMargin);
}
