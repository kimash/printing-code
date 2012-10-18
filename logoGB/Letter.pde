class Letter
{
  float distX, distY;  //bounding box parameters
  float xpos, ypos;    //starting (x,y) for upper left corner
  
  Letter(float xpos_, float ypos_, float distX_, float distY_){
    distX = distX_;  
    distY = distY_;  
    xpos = xpos_;  
    ypos = ypos_;  
  }
  
  void b()
  {
    canvas.pushMatrix();
    canvas.ellipseMode(CENTER);
    canvas.line(xpos, ypos, xpos, ypos + distY);
    canvas.arc(xpos, ypos + distY/6, distX/3, distY/3, -3*PI/4, PI/2);
    canvas.arc(xpos, ypos + 4*distY/6, distX/2, 2*distY/3, -PI/2, PI/2);
    canvas.popMatrix();
  }
  
  void d()
  {
    canvas.pushMatrix();
    canvas.ellipseMode(CENTER);
    canvas.line(xpos + 2*distX/3, ypos, xpos + 2*distX/3, ypos + distY);
    canvas.arc(xpos + 3*distX/4, ypos + 3*distY/4, 2*distX/3, distY/3, PI/2, 3*PI/2);
    canvas.popMatrix();
  }
  
  void e()
  {
    canvas.pushMatrix();
    canvas.ellipseMode(CENTER);
    canvas.arc(xpos + distX/2, ypos + distY/2, distX, distY, -PI/2, PI/2);
    canvas.line(xpos + distX/2, ypos + distY/2, xpos + distX, ypos + distY/2);  //horizontal line
    canvas.popMatrix();
  }
  
  void g()
  {
 
    canvas.pushMatrix();
    canvas.ellipseMode(CENTER);
    canvas.arc(xpos + distX/2, ypos + distY/2, distX, distY, PI/2, 3*PI/2);
    canvas.line(xpos + distX/2, ypos + distY/2, xpos + distX/2, ypos + distY);  //vertical line
    canvas.line(xpos + distX/4, ypos + distY/2, xpos + distX/2, ypos + distY/2);  //horizontal line
    canvas.popMatrix();
  }
  
  void l()
  {
    canvas.pushMatrix();
    canvas.line(xpos, ypos, xpos, ypos + distY);
    canvas.line(xpos, ypos + distY, xpos + distX, ypos + 4*distY/5);
    canvas.popMatrix();
  }
  
  void o()
  {
    canvas.pushMatrix();
    //canvas.ellipseMode(CORNER);
    canvas.ellipse(xpos + 1.5*distX/6, ypos + distY/2, distX/3, distY);
    canvas.popMatrix();
  }
  
  void r()
  {
    canvas.pushMatrix();
    canvas.line(xpos, ypos, xpos, ypos + distY);
    canvas.arc(xpos, ypos + distY/6, distX/3, distY/3, -3*PI/4, PI/2);
    canvas.line(xpos, ypos + distY/3, xpos + distX/3, ypos + distY);
    canvas.popMatrix();
  }
}
