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
    canvas.line(xpos, ypos, xpos, ypos + distY);
    //canvas.bezier();
  }
  
  void d()
  {
    canvas.line(xpos + 2*distX/3, ypos, xpos  + 2*distX/3, ypos + distY);
    //canvas.bezier();
  }
  
  void e()
  {
    //canvas.bezier();
  }
  
  void g()
  {
    canvas.bezier(xpos + distX/4, ypos + distY/3, xpos, ypos + 3*distY/4, xpos + 3*distX/4, ypos - distY/4, xpos + 3*distX/4, ypos + distY/3);
  }
  
  void l()
  {
    canvas.line(xpos, ypos, xpos, ypos + distY);
    canvas.line(xpos, ypos + distY, xpos + distX, ypos + 4*distY/5); 
  }
  
  void o()
  {
    canvas.noFill();
    canvas.ellipseMode(CORNER);
    canvas.ellipse(xpos, ypos, distX/3, distY);
  }
}
