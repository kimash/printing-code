//Kim Ash
//Printing Code
//Olivetti - weighted randomness inspired by Olivetti poster

import toxi.util.datatypes.*;

PGraphics canvas;
int canvas_width = 5100;
int canvas_height = 6600;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

PVector bezAnc1, bezAnc2, bezAnc3;  //bezier anchor points
PVector bezCon1, bezCon2, bezCon3, bezCon4;  //bezier control points

void setup()
{ 
  size(510, 660);
  colorMode(HSB, 360, 100, 100, 100);
  canvas = createGraphics(canvas_width, canvas_height);
  
  calculateResizeRatio();
  
  canvas.beginDraw();
    canvas.colorMode(HSB, 360, 100, 100, 100);
    canvas.background(360, 0, 100);
    canvas.smooth();
    canvas.noFill();
    
    //create a weighted random set of loop colors
    color r = color(6, 98, 100, 80);
    color g = color(149, 82, 44, 80);
    color b = color(204, 98, 95, 80);
    color k = color(360, 100, 0, 80); 
    WeightedRandomSet<Integer> loopColors = new WeightedRandomSet<Integer>();
    loopColors.add(r, 40);  //more weight on red
    loopColors.add(g, 20);
    loopColors.add(b, 20);
    loopColors.add(k, 20);
    
    //PVectors for bezier points
    bezAnc1 = new PVector(canvas.width/2, 5*canvas.height/6);
    bezCon1 = new PVector(0, 3*canvas.height/5);
    bezCon2 = new PVector(canvas.width/5, canvas.height/10);
    bezAnc2 = new PVector(3*canvas.width/4, canvas.height/7);
    bezCon3 = new PVector(6*canvas.width/7, canvas.height/6);
    bezCon4 = new PVector(canvas.width, canvas.height/5);
    bezAnc3 = new PVector(4*canvas.width/5, 4*canvas.height/7);
    
    //loops
    canvas.strokeWeight(height/15);
    canvas.beginShape();
    for(int i=3; i<15; i++)  { 
      canvas.stroke(loopColors.getRandom());  //select a random color from the weighted set
      //canvas.bezier(canvas.width/2 - (i*0.4*canvas.height/15), 2*canvas.height/3, 0, canvas.height/3, canvas.width/5, canvas.height/3*i*0.4, (canvas.width/2)+i*canvas.width/10, 2*canvas.height/3);
      canvas.bezier(bezAnc1.x, bezAnc1.y, bezCon1.x, bezCon1.y, bezCon2.x, bezCon2.y, bezAnc2.x, bezAnc2.y);
      canvas.bezier(bezAnc2.x, bezAnc2.y, bezCon3.x, bezCon3.y, bezCon4.x, bezCon4.y, bezAnc3.x, bezAnc3.y);
      
      canvas.stroke(360, 70, 0, 100);
      canvas.fill(360, 70, 0, 100);
      canvas.ellipse(bezAnc3.x, bezAnc3.y, canvas.width/30, canvas.width/30);
      canvas.noFill();
    }
    canvas.endShape();
    
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
