class Letter
{
   PVector pos;  //upper left corner of letter
   float distX, distY;  //bounding box parameters
   
   Letter(float xpos, float ypos, float distX_)
   {
     pos = new PVector(xpos, ypos);
     distX = distX_;
     distY = 5*distX/4;
   }
   
   void a()
   {
     canvas.pushMatrix();
     canvas.line(pos.x, pos.y + distY, pos.x + distX/2, pos.y);  //left diag
     canvas.line(pos.x + distX/2, pos.y, pos.x + distX, pos.y + distY);  //right diag
     canvas.arc(pos.x, pos.y + distY, 1.88*distX, 1.75*distX, -PI/2, -PI/12);
     canvas.popMatrix(); 
   }
   
   void b()
   {
     canvas.pushMatrix();
     canvas.translate(-distX/8, 0);
     canvas.line(pos.x + distX/4, pos.y, pos.x + distX/4, pos.y + distY);  //vert
     canvas.arc(pos.x + distX/4, pos.y + distY/4, 1.75*distX, 1.1*distY/2, -5*PI/8, PI/2.5);  //top arc
     canvas.arc(pos.x + distX/4, pos.y + 3*distY/4, 1.75*distX, 1.1*distY/2, -3*PI/8, 1.8*PI/3);  //bottom arc
     canvas.popMatrix();
   }
   
   void c()
   {
     canvas.pushMatrix();
     canvas.arc(pos.x + distX, pos.y + distY/2, 1.75*distX, distY, PI/2, 3*PI/2);
     canvas.popMatrix(); 
   }
   
   void d()
   {
     canvas.pushMatrix();
     canvas.translate(distX/8, 0);
     canvas.arc(pos.x, pos.y + distY/2, 1.75*distX, distY, -PI/2, PI/2);
     canvas.line(pos.x, pos.y, pos.x, pos.y + distY);
     canvas.popMatrix(); 
   }
   
   void e()
   {
     canvas.pushMatrix();
     canvas.arc(pos.x + distX, pos.y + distY/2, 1.75*distX, distY, PI/2, 3*PI/2);
     canvas.line(pos.x + 0.125*distX, pos.y + distY/2, pos.x + distX, pos.y + distY/2);
     canvas.popMatrix(); 
   }
   
   void h()
   {
     canvas.pushMatrix();
     canvas.line(pos.x + distX/4, pos.y + distY, pos.x + distX/4, pos.y);  //left vert
     canvas.line(pos.x + distX, pos.y, pos.x + distX, pos.y + distY);  //right vert
     canvas.arc(pos.x, pos.y + distY, 2*distX, 1.75*distX, -PI/2, 0);
     canvas.popMatrix(); 
   }
   
   void i()
   {
     canvas.pushMatrix();
     canvas.line(pos.x + distX/2, pos.y, pos.x + distX/2, pos.y + distY);
     canvas.popMatrix(); 
   }
   
   void l()
   {
     canvas.pushMatrix();
     canvas.translate(distX/4, 0);
     canvas.line(pos.x, pos.y, pos.x, pos.y + distY);
     canvas.line(pos.x, pos.y + distY, pos.x + 0.75*distX, pos.y + distY);
     canvas.popMatrix(); 
   }
   
   void m()
   {
     canvas.pushMatrix();
     canvas.line(pos.x, pos.y, pos.x, pos.y + distY);  //left vert
     canvas.line(pos.x, pos.y, pos.x + distX/2, pos.y + distY);  //left diag
     canvas.line(pos.x + distX/2, pos.y + distY, pos.x + distX, pos.y);  //right diag
     canvas.line(pos.x + distX, pos.y, pos.x + distX, pos.y + distY);  //right vert
     canvas.popMatrix(); 
   }
   
   void n()
   {
     canvas.pushMatrix();
     canvas.line(pos.x, pos.y, pos.x, pos.y + distY);  //left vert
     canvas.line(pos.x, pos.y, pos.x + distX, pos.y + distY);  //diag
     canvas.line(pos.x + distX, pos.y, pos.x + distX, pos.y + distY);  //right vert
     canvas.popMatrix(); 
   }
   
   void o()
   {
     canvas.pushMatrix();
     canvas.ellipse(pos.x + distX/2, pos.y + distY/2, 0.88*distX, distY);
     canvas.popMatrix(); 
   }
   
   void r()
   {
     canvas.pushMatrix();
     canvas.translate(-distX/8, 0);
     canvas.arc(pos.x + distX/4, pos.y + distY/4, 1.75*distX, 1.1*distY/2, -5*PI/8, PI/2.5);  //top arc
     canvas.line(pos.x + distX/4, pos.y, pos.x + distX/4, pos.y + distY);
     canvas.arc(pos.x + 1.56*distX, pos.y + distY/2, 2.1*distX, 1.8*distX, PI/2, PI);  //tail
     canvas.popMatrix();
   }
   
   void s()
   {
     canvas.arc(pos.x + distX, pos.y + distY/4, 1.75*distX, 1.1*distY/2, 5*PI/8, 3*PI/2);  //top arc
     canvas.arc(pos.x + distX/4, pos.y + 3*distY/4, 1.75*distX, 1.1*distY/2, -3*PI/8, PI/2);  //bottom arc
   }
   
   void t()
   {
     canvas.pushMatrix();
     //canvas.translate(distX/8, 0);
     canvas.line(pos.x + distX/2, pos.y, pos.x + distX/2, pos.y + distY);  //vert
     canvas.line(pos.x, pos.y, pos.x + distX, pos.y);  //horiz
     canvas.popMatrix(); 
   }
   
   void u()
   {
     canvas.pushMatrix();
     canvas.arc(pos.x + distX/2, pos.y, 0.8*distX, 2*distY, 0, PI);
     canvas.popMatrix(); 
   }
   
   void y()
   {
     canvas.pushMatrix();
     canvas.arc(pos.x + distX/2, pos.y, distX, distY, 0, PI);
     canvas.line(pos.x + distX/2, pos.y + distY/2, pos.x + distX/2, pos.y + distY);
     canvas.popMatrix(); 
   }
}
