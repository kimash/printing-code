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
    canvas.translate(distX/2, 0);  //center letter in bounding box
    canvas.line(xpos, ypos, xpos, ypos + distY);
    canvas.arc(xpos, ypos + distY/4, 2*distX/3, distY/2, -3*PI/4, PI/2);  //top arc
    canvas.arc(xpos, ypos + 3*distY/4, distX, distY/2, -PI/2, PI/2);  //bottom arc
    canvas.popMatrix();
  }
  
  void d()
  {
    canvas.pushMatrix();
    canvas.ellipseMode(RADIUS);
    canvas.translate(distX/4, 0);  //center letter in bounding box
    canvas.line(xpos + 2*distX/3, ypos, xpos + 2*distX/3, ypos + distY);
    canvas.arc(xpos + 3*distX/4, ypos + 3*distY/4, 2*distX/3, distY/3, PI/2, 3*PI/2);
    canvas.popMatrix();
  }
  
  void e()
  {
    canvas.pushMatrix();
    canvas.ellipseMode(CENTER);
    canvas.translate(distX/4, 0);  //center letter in bounding box
    canvas.arc(xpos, ypos + distY/2, distX, distY, -PI/2, PI/2);
    canvas.line(xpos, ypos + distY/2, xpos + distX/2, ypos + distY/2);  //horizontal line
    canvas.popMatrix();
  }
  
  void g()
  {
 
    canvas.pushMatrix();
    canvas.ellipseMode(CENTER);
    canvas.translate(-distX/4, 0);  //center letter in bounding box
    canvas.arc(xpos + distX, ypos + distY/2, distX, distY, PI/2, 3*PI/2);
    canvas.line(xpos + distX, ypos + distY/2, xpos + distX, ypos + 1.25*distY);  //vertical line
    canvas.line(xpos + 3*distX/4, ypos + distY/2, xpos + distX, ypos + distY/2);  //horizontal line
    canvas.popMatrix();
  }
  
  void l()
  {
    canvas.pushMatrix();
    canvas.translate(distX/8, 0);  //center letter in bounding box
    canvas.line(xpos, ypos, xpos, ypos + distY);  //vertical line
    canvas.line(xpos, ypos + distY, xpos + 3*distX/4, ypos + 3*distY/4);  //horizontal line
    canvas.popMatrix();
  }
  
  void o()
  {
    canvas.pushMatrix();
    canvas.ellipseMode(CENTER);
    canvas.ellipse(xpos + distX/2, ypos + distY/2, distX, distY);
    canvas.popMatrix();
  }
  
  void r()
  {
    canvas.pushMatrix();
    ellipseMode(CENTER);
    canvas.translate(distX/4, 0);
    canvas.line(xpos, ypos, xpos, ypos + distY);
    canvas.arc(xpos, ypos + distY/3, distX, distY/2, -3*PI/4, PI/2);
    canvas.line(xpos, ypos + distY/2, xpos + distX, ypos + distY);
    canvas.popMatrix();
  }
}
