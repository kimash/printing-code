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

PVector bezAnc1, bezAnc2;  //bezier anchor points
PVector bezCon1, bezCon2;  //bezier control points

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
    color r = color(6, 98, 100, 70);
    color g = color(149, 82, 44, 70);
    color b = color(204, 98, 95, 70);
    color k = color(360, 100, 0, 70); 
    WeightedRandomSet<Integer> loopColors = new WeightedRandomSet<Integer>();
    loopColors.add(r, 40);  //more weight on red
    loopColors.add(g, 20);
    loopColors.add(b, 20);
    loopColors.add(k, 20);
    
    //PVectors for bezier points
    bezAnc1 = new PVector(canvas.width/2, 5*canvas.height/6);
    bezCon1 = new PVector(0, 3*canvas.height/5);
    bezCon2 = new PVector(canvas.width/3, canvas.height/20);
    bezAnc2 = new PVector(13*canvas.width/14, canvas.height/4);
    
    //curves
    canvas.strokeWeight(height/15);
    canvas.beginShape();
    for(int i=3; i<18; i++)  { 
      canvas.stroke(loopColors.getRandom());  //select a random color from the weighted set
      
      //introduce randomness to anchor and control points
      PVector bezAnc1Ran = new PVector(bezAnc1.x - i*random(canvas.height/40), bezAnc1.y - i*random(canvas.height/50));
      PVector bezCon2Ran = new PVector(bezCon2.x - i*random(canvas.height/50), bezCon2.y - i*random(canvas.height/30)); 
      PVector bezAnc2Ran = new PVector(bezAnc2.x - i*random(canvas.height/30), bezAnc2.y + i*random(canvas.height/30));
      
      canvas.bezier(bezAnc1Ran.x, bezAnc1Ran.y, bezCon1.x, bezCon1.y, bezCon2Ran.x, bezCon2Ran.y, bezAnc2Ran.x, bezAnc2Ran.y);
      
      //circles on the ends of the curves
      canvas.stroke(360, 70, 0, 100);
      canvas.fill(360, 70, 0, 100);
      canvas.ellipse(bezAnc2Ran.x, bezAnc2Ran.y, canvas.width/30, canvas.width/30);
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
