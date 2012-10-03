class Letter
{
  float distX, distY;
  float xpos, ypos;
  
  Letter(float xpos_, float ypos_, float distX_, float distY_){
    distX = distX_;
    distY = distY_;
    xpos = xpos_;
    ypos = ypos_;
  }
  
  void f()
  {
    canvas.rect(xpos, ypos, distX, distY);
    canvas.line(xpos + distX, ypos, xpos + 2*distX, ypos);
    canvas.line(xpos + distX, ypos + distY/3, xpos + 2*distX, ypos + distY/3);
  }
  
  void i()
  {
    canvas.rect(xpos, ypos, distX, distY);
  }
  
  void m()
  {
    canvas.rect(xpos, ypos, distX, distY);
    canvas.line(xpos + distX, ypos, xpos + 2*distX, ypos);
    canvas.line(xpos + 3*distX/2, ypos, xpos + 3*distX/2, ypos + distY/2);
    canvas.line(xpos + 2*distX, ypos, xpos + 2*distX, ypos + distY);
  }
  
  void n()
  {
    canvas.rect(xpos, ypos, distX, distY);
    canvas.line(xpos + distX, ypos, xpos + 2*distX, ypos);
    canvas.line(xpos + 2*distX, ypos, xpos + 2*distX, ypos + distY);
  }
  
  void u()
  {
    canvas.rect(xpos, ypos, distX, distY);
    canvas.line(xpos + distX, ypos + distY, xpos + 2*distX, ypos + distY);
    canvas.line(xpos + 2*distX, ypos, xpos + 2*distX, ypos + distY);
  }
}
