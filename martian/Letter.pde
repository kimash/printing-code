class Letter
{
   PVector pos;  //upper left corner of letter
   float distX, distY;  //bounding box parameters
   
   Letter(float xpos, float ypos, float distX_, float distY_)
   {
     pos = new PVector(xpos, ypos);
     distX = distX_;
     distY = distY_;
   }
   
   void a()
   {
     canvas.pushMatrix();
     canvas.line(pos.x, pos.y + distY, pos.x + distX/2, pos.y);
     canvas.line(pos.x + distX/2, pos.y, pos.x + distX, pos.y + distY);
     canvas.arc(pos.x, pos.y + distY, 1.88*distX, 1.75*distX, -PI/2, -PI/12);
     canvas.popMatrix(); 
   }
   
   void h()
   {
     canvas.pushMatrix();
     canvas.line(pos.x + distX/4, pos.y + distY, pos.x + distX/4, pos.y);
     canvas.line(pos.x + distX, pos.y, pos.x + distX, pos.y + distY);
     canvas.arc(pos.x, pos.y + distY, 2*distX, 1.75*distX, -PI/2, 0);
     canvas.popMatrix(); 
   }
   
   void i()
   {
     canvas.pushMatrix();
     canvas.line(pos.x + distX/2, pos.y, pos.x + distX/2, pos.y + distY);
     canvas.popMatrix(); 
   }
}
