class Mpattern
{
  float distX, distY;
  float xpos, ypos;
  
  Mpattern(float xpos_, float ypos_) 
  {
    distX = canvas.width/15;  //1/2 width of M
    xpos = xpos_;  //xpos of top left corner of M
    ypos = ypos_;  //ypos of top left corner of M
    distY = 2.25*distX;  //full height of M
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
