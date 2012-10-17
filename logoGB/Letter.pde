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
    canvas.line(xpos, ypos + distY/5, xpos, ypos + 3*distY/4);
    canvas.bezier(xpos, ypos + distX/3, xpos + 4*distX/3, ypos + distY/3, xpos - distX/4, ypos + distY/3, xpos, ypos + distY/3);
    canvas.bezier(xpos, ypos + 2*distX/3, xpos + 4*distX/3, ypos + 2*distY/3, xpos - distX/4, ypos + 2*distY/3, xpos, ypos + 2*distY/3);
  }
  
  void d()
  {
    canvas.line(xpos + 2*distX/3, ypos, xpos + 2*distX/3, ypos + distY);
    //canvas.bezier();
  }
  
  void e()
  {
    canvas.arc(xpos + distX/2, ypos + distY/2, distX, distY, -PI/2, PI/2);
    canvas.line(xpos + distX/2, ypos + distY/2, xpos + distX, ypos + distY/2);  //horizontal line
  }
  
  void g()
  {
 
    canvas.arc(xpos + distX/2, ypos + distY/2, distX, distY, PI/2, 3*PI/2);
    canvas.line(xpos + distX/2, ypos + distY/2, xpos + distX/2, ypos + distY);  //vertical line
    canvas.line(xpos + distX/4, ypos + distY/2, xpos + distX/2, ypos + distY/2);  //horizontal line
  }
  
  void l()
  {
    canvas.line(xpos, ypos, xpos, ypos + distY);
    canvas.line(xpos, ypos + distY, xpos + distX, ypos + 4*distY/5); 
  }
  
  void o()
  {
    canvas.ellipse(xpos, ypos, distX/3, distY);
  }
}
