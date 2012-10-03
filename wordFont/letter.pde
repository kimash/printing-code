class Letter
{
  float distX, distY;
  float xpos, ypos;
  
  Letter(float distX_, float distY_, float xpos_, float ypos_){
    distX = distX_;
    distY = distY_;
    xpos = xpos_;
    ypos = ypos_;
  }
  
  void f()
  {
    rect(xpos, ypos, distX, distY);
    line(xpos + distX, ypos, xpos + 2*distX, ypos);
    line(xpos + distX, ypos + distY/3, xpos + 2*distX, ypos + distY/3);
  }
  
  void i()
  {
    rect(xpos, ypos, distX, distY);
  }
  
  void m()
  {
    rect(xpos, ypos, distX, distY);
    line(xpos + distX, ypos, xpos + 2*distX, ypos);
    line(xpos + 3*distX/2, ypos, xpos + 3*distX/2, ypos + distY/2);
  }
  
  void n()
  {
    rect(xpos, ypos, distX, distY);
    line(xpos + distX, ypos, xpos + 2*distX, ypos);
    line(xpos + 2*distX, ypos, xpos + 2*distX, ypos + distY);
  }
  
  void u()
  {
    rect(xpos, ypos, distX, distY);
    line(xpos + distX, ypos + distY, xpos + 2*distX, ypos + distY);
    line(xpos + 2*distX, ypos, xpos + 2*distX, ypos + distY);
  }
}
