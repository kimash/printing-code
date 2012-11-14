class Mpattern
{
  float distX, distY;
  float xpos, ypos;
  float sw;
  
  Mpattern(float xpos_, float ypos_, float distX_, float distY_) 
  {
    distX = distX_;  //1/2 width of letter
    distY = distY_;  //full height of letter
    xpos = xpos_;  //xpos of top left corner of letter
    ypos = ypos_;  //ypos of top left corner of letter
  }
  
  void display()
  {
    canvas.pushMatrix();
    canvas.strokeJoin(BEVEL);
    canvas.line(xpos, ypos, xpos, ypos + distY);  //left vert line
    canvas.line(xpos, ypos, xpos + 2*distX, ypos);  //top horiz line
    canvas.line(xpos + distX, ypos, xpos + distX, ypos + distY);  //mid-top vert line
    canvas.line(xpos + 2*distX, ypos, xpos + 2*distX, ypos + distY);  //right vert line
    canvas.popMatrix();
    
    canvas.pushMatrix();
    canvas.strokeJoin(BEVEL);
    canvas.stroke(0, 100, 100);
    canvas.translate(distX/8, 0);
    canvas.line(xpos, ypos, xpos, ypos + distY);  //left vert line
    canvas.line(xpos, ypos, xpos + 2*distX, ypos);  //top horiz line
    canvas.line(xpos + distX, ypos, xpos + distX, ypos + distY);  //mid-top vert line
    canvas.line(xpos + 2*distX, ypos, xpos + 2*distX, ypos + distY);  //right vert line
    canvas.popMatrix();
  }
}
