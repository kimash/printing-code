//Kim Ash
//Printing Code
//Wet/Sharp

PGraphics canvas;
int canvas_width = 5100;
int canvas_height = 5100;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

void setup()
{ 
  size(800, 800);
  background(30);
  
  canvas = createGraphics(canvas_width, canvas_height, P2D);
  
  calculateResizeRatio();
  
  canvas.beginDraw();
    canvas.background(255);
    canvas.smooth();
    canvas.stroke(0);
    canvas.strokeWeight(4);
    //canvas.fill(255);
    
    //wet
    randomSeed(683);  //97
    canvas.strokeWeight(height/30);
    int circleRadius = canvas.width/5;
    float numVertices = 70;
    float vertexDegree = 360 / numVertices;
    canvas.fill(0);
    canvas.pushMatrix();
    canvas.translate(canvas.width/2, canvas.height/4);
    canvas.beginShape();
        for(int i = 0; i < numVertices; i++)
      {
        float x = cos(radians(i * vertexDegree)) * (circleRadius*2);
        float y = sin(radians(i * vertexDegree)) * (circleRadius + random(-height/4, height/4));
        if(y>=circleRadius)  {
          canvas.curveVertex(x, y + height/2);
        }
        else  {
          canvas.curveVertex(x, y);
        }
      }
    canvas.endShape(CLOSE);
    canvas.popMatrix();
    
    //sharp
    canvas.noFill();
    
    canvas.strokeCap(ROUND);
    noiseSeed(4);
    canvas.beginShape();
    for(int i=0; i<21; i++)
    {
      if(i%2 == 0) {  //even points are peaks, odds are valleys
        canvas.vertex(canvas.width - i*(canvas.width/20), (5*canvas.height/6)*noise(i*0.1));
        //canvas.vertex(canvas.width - i*(canvas.width/20), canvas.height*noise(i*0.1));
      }
      else  {
        canvas.vertex(canvas.width - i*(canvas.width/20), canvas.height*noise(i*0.1));
        //canvas.vertex(canvas.width - i*(canvas.width/20), (5*canvas.height/6)*noise(i*0.1));
      }
    }
    canvas.endShape();
  canvas.endDraw();
  
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;
  //displays canvas onscreen
  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);
  
  canvas.save("grab.tiff");
}


/* resizing function */
void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;
  
  if(ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}
