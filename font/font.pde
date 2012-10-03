//Kim Ash
//Printing Code
//Font - manipulates typeface based on rule system

import geomerative.*;
import org.apache.batik.svggen.font.table.*;
import org.apache.batik.svggen.font.*;

PGraphics canvas;
int canvas_width = 5100;
int canvas_height = 5100;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

RFont font;
RGroup grp;
RPoint[] pnts;
String word = "muffin";

void setup()
{ 
  size(510, 510);
  
  RG.init(this);
  font = new RFont("BaltHelvetica_Medium.ttf", canvas.width/10, RFont.LEFT);
  
  canvas = createGraphics(canvas_width, canvas_height);
  
  calculateResizeRatio();
  
  canvas.beginDraw();
    canvas.colorMode(HSB, 360, 100, 100);
    //float h = random(100);
    canvas.background(360);
    canvas.smooth();
    //canvas.noFill();
    canvas.fill(0, 100, 0);
    canvas.noStroke();
    
    RCommand.setSegmentLength(canvas.width/30);
    //RCommand.setSegmentator(RCommand.UNIFORMLENGTH);

    grp = font.toGroup(word);
    grp = grp.toPolygonGroup();
    pnts = grp.getPoints();
    
    //canvas.stroke(0, 100, 0);
    //canvas.strokeWeight(height/30);
    
    canvas.pushMatrix();
    canvas.translate((canvas.width/2) - (grp.getWidth()/2), (canvas.height/2) + (grp.getHeight()/2));
    canvas.beginShape();
    for (int i = 0; i < pnts.length; i++ ) 
    {
      canvas.ellipse(pnts[i].x, pnts[i].y, canvas.width/40, canvas.width/40);
    }
    canvas.endShape();
    canvas.popMatrix();
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
