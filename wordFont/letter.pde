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
  
  void a()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos, xpos + 2*distX, ypos);  //top horiz line
    canvas.line(xpos + distX, ypos + distY/2, xpos + 2*distX, ypos + distY/2);  //middle horiz line
    canvas.line(xpos + 2*distX, ypos, xpos + 2*distX, ypos + distY);  //right vert line
  }
  
  void b()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos + distY/2, xpos + 2*distX, ypos + distY/2);  //middle horiz line
    canvas.line(xpos + 2*distX, ypos + distY/2, xpos + 2*distX, ypos + distY);  //1/2 right vert line
    canvas.line(xpos, ypos + distY, xpos + 2*distX, ypos + distY);  //bottom horiz line
  }
  
  void c()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos, xpos + 2*distX, ypos);  //top horiz line
    canvas.line(xpos + distX, ypos + distY, xpos + 2*distX, ypos + distY);  //bottom horiz line  
  }
  
  void e()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos, xpos + 2*distX, ypos);  //top horiz line
    canvas.line(xpos + distX, ypos + distY/2, xpos + 2*distX, ypos + distY/2);  //middle horiz line
    canvas.line(xpos + distX, ypos + distY, xpos + 2*distX, ypos + distY);  //bottom horiz line
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
  
  void k()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos + distY/2, xpos + 2*distX, ypos);  //mid to top right diagonal
    canvas.line(xpos + distX, ypos + distY/2, xpos + 2*distX, ypos + distY);  //mid to bottom right diagonal
  }
  
  void l()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos + distY, xpos + 2*distX, ypos + distY);  //bottom horiz line  
  }
  
  void m()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos, xpos + 2*distX, ypos);  //top horiz line
    canvas.line(xpos + 3*distX/2, ypos, xpos + 3*distX/2, ypos + distY/2);  //mid-top vert line
    canvas.line(xpos + 2*distX, ypos, xpos + 2*distX, ypos + distY);  //right vert line
  }
  
  void n()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos, xpos + 2*distX, ypos);  //top horiz line
    canvas.line(xpos + 2*distX, ypos, xpos + 2*distX, ypos + distY);  //right vert line
  }

  void o()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos, xpos + 2*distX, ypos);  //top horiz line
    canvas.line(xpos + 2*distX, ypos, xpos + 2*distX, ypos + distY);  //right vert line
    canvas.line(xpos + distX, ypos + distY, xpos + 2*distX, ypos + distY);  //bottom horiz line }
  }
  
  void p()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos, xpos + 2*distX, ypos);  //top horiz line
    canvas.line(xpos + distX, ypos + distY/2, xpos + 2*distX, ypos + distY/2);  //middle horiz line
    canvas.line(xpos + 2*distX, ypos, xpos + 2*distX, ypos + distY/2);  //1/2 right vert line
  }
  
  void r()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos, xpos + 2*distX, ypos);  //top horiz line
    canvas.line(xpos + distX, ypos + distY/2, xpos + 2*distX, ypos + distY/2);  //middle horiz line
    canvas.line(xpos + 2*distX, ypos, xpos + 2*distX, ypos + distY/2);  //1/2 right vert line
    canvas.line(xpos + distX, ypos + distY/2, xpos + 2*distX, ypos + distY);  //mid to bottom right diagonal
  }
  
  void t()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos + distY/2, xpos + 2*distX, ypos + distY/2);  //middle horiz line
    canvas.line(xpos + distX, ypos + distY, xpos + 2*distX, ypos + distY);  //bottom horiz line
  }
  
  void u()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos + distY, xpos + 2*distX, ypos + distY);  //bottom horiz line
    canvas.line(xpos + 2*distX, ypos, xpos + 2*distX, ypos + distY);  //right vert line
  }
  
  void v()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos + distY, xpos + 2*distX, ypos);  //right vert line
  }
  
  void w()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos + distY, xpos + 2*distX, ypos + distY);  //bottom horiz line
    canvas.line(xpos + 2*distX, ypos, xpos + 2*distX, ypos + distY);  //right vert line
    canvas.line(xpos + 3*distX/2, ypos + distY, xpos + 3*distX/2, ypos + distY/2);  //mid-bottom vert line
  }
}
