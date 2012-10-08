class Letter
{
  float distX, distY;
  float xpos, ypos;
  
  Letter(float xpos_, float ypos_, float distX_, float distY_){
    distX = distX_;  //left half of letter
    distY = distY_;  //right half of letter
    xpos = xpos_;  //xpos of top left corner of letter
    ypos = ypos_;  //ypos of top left corner of letter
  }
  
  void f()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos, xpos + 2*distX, ypos);  //top horiz line
    canvas.line(xpos + distX, ypos + distY/3, xpos + 2*distX, ypos + distY/3);  //1/3 horiz line
  }
  
  void i()  //special case: doesn't have right side lines
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
  }
  
  void m()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos, xpos + 2*distX, ypos);  //top horiz line
    canvas.line(xpos + 3*distX/2, ypos, xpos + 3*distX/2, ypos + distY/2);  //middle vert line
    canvas.line(xpos + 2*distX, ypos, xpos + 2*distX, ypos + distY);  //right vert line
  }
  
  void n()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos, xpos + 2*distX, ypos);  //top horiz line
    canvas.line(xpos + 2*distX, ypos, xpos + 2*distX, ypos + distY);  //right vert line
  }
  
  void u()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos + distY, xpos + 2*distX, ypos + distY);  //bottom horiz line
    canvas.line(xpos + 2*distX, ypos, xpos + 2*distX, ypos + distY);  //right vert line
  }
}
