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
  
  void d()
  {
    canvas.rect(xpos + distX, ypos, distX, distY);  //filled right side box
    canvas.line(xpos, ypos + distY/2, xpos + distX, ypos + distY/2);  //middle horiz line left
    canvas.line(xpos, ypos + distY/2, xpos, ypos + distY);  //1/2 left vert line bottom
    canvas.line(xpos, ypos + distY, xpos + distX, ypos + distY);  //bottom horiz line left
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
  
  void g()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos, xpos + 2*distX, ypos);  //top horiz line
    canvas.line(xpos + distX, ypos + distY, xpos + 2*distX, ypos + distY);  //bottom horiz line
    canvas.line(xpos + 2*distX, ypos + distY/2, xpos + 2*distX, ypos + distY);  //1/2 right vert line  
  }
  
  void h()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos + distY/2, xpos + 2*distX, ypos + distY/2);  //middle horiz line
    canvas.line(xpos + 2*distX, ypos, xpos + 2*distX, ypos + distY);  //right vert line
  }
  
  void i()  //special case: doesn't have right side lines
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
  }
  
  void j()
  {
    canvas.rect(xpos + distX, ypos, distX, distY);  //filled right side box
    canvas.line(xpos, ypos + 2*distY/3, xpos, ypos + distY);  //2/3 left vert line bottom
    canvas.line(xpos, ypos + distY, xpos + distX, ypos + distY);  //bottom horiz line left
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
  
  void q()
  {
    canvas.rect(xpos + distX, ypos, distX, distY);  //filled right side box
    canvas.line(xpos, ypos, xpos + 2*distX, ypos);  //top horiz line left
    canvas.line(xpos, ypos + distY/2, xpos + distX, ypos + distY/2);  //middle horiz line left
    canvas.line(xpos, ypos, xpos, ypos + distY/2);  //1/2 left vert line
  }
  
  void r()
  {
    canvas.rect(xpos, ypos, distX, distY);  //filled left side box
    canvas.line(xpos + distX, ypos, xpos + 2*distX, ypos);  //top horiz line
    canvas.line(xpos + distX, ypos + distY/2, xpos + 2*distX, ypos + distY/2);  //middle horiz line
    canvas.line(xpos + 2*distX, ypos, xpos + 2*distX, ypos + distY/2);  //1/2 right vert line
    canvas.line(xpos + distX, ypos + distY/2, xpos + 2*distX, ypos + distY);  //mid to bottom right diagonal
  }
  
  void s()
  {
    canvas.rect(xpos, ypos, distX, distY/2);  //filled top left 1/2 box
    canvas.line(xpos + distX, ypos, xpos + 2*distX, ypos);  //top horiz line
    canvas.rect(xpos + distX, ypos + distY/2, distX, distY/2);  //filled bottom right 1/2 box
    canvas.line(xpos, ypos + distY, xpos + distX, ypos + distY);  //bottom horiz line
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
  
  void y()
  {
    canvas.rect(xpos + distX, ypos, distX, distY);  //filled right side box
    canvas.line(xpos, ypos + distY/2, xpos + distX, ypos + distY/2);  //middle horiz line left
    canvas.line(xpos, ypos, xpos, ypos + distY/2);  //1/2 left vert line
    canvas.line(xpos, ypos + distY, xpos + distX, ypos + distY);  //bottom horiz line left
  }
  
  void z()
  {
    canvas.rect(xpos, ypos + distY/2, distX, distY/2);  //filled bottom left 1/2 box
    canvas.line(xpos, ypos, xpos + distX, ypos);  //top left horiz line
    canvas.rect(xpos + distX, ypos, distX, distY/2);  //filled top right 1/2 box
    canvas.line(xpos + distX, ypos + distY, xpos + 2*distX, ypos + distY);  //bottom right horiz line
  }
}
