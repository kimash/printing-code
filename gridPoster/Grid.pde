class Grid
{
  int cols;
  float pageMargin;
  Column[] columns;
  
  Grid(int _cols, float _pageMargin)
  {
    cols = _cols;
    pageMargin = _pageMargin;
    
    // cache the full width of all columns
    float fullWidth = canvas.width - (2*pageMargin);
    float[] rands = new float[cols];
    float ranSum = 0;
  
    for(int i = 0; i < rands.length; i++)
    {
      // generate a number between 0 and 1
      rands[i] = random(1);
   
      // OPTIONAL! tweak the number to avoid too big a size difference
      if(rands[i] < 0.4)  rands[i] = 0.4;
   
      // add to the sum
      ranSum += rands[i];
    }
  
    // now divide each random number with its sum to normalize and multiply by full width
    for(int i = 0; i < rands.length; i++)
    {
       rands[i] = (rands[i] / ranSum) * fullWidth; 
    }
    
    // make column objects
    columns = new Column[cols];
    float xPos = pageMargin;
    
    for(int i = 0; i < cols; i++)
    {
      columns[i] = new Column();
      columns[i].x = xPos;
      columns[i].y = pageMargin;
      columns[i].w = rands[i];
      columns[i].h = canvas.height - (2*pageMargin);
      
      xPos += rands[i];
    }
  }

  void display()
  {
    // draw big bounding box
    canvas.noFill();
    canvas.stroke(0, 0, 100);
    canvas.strokeWeight(canvas.width/600);
    canvas.rect(pageMargin, pageMargin, canvas.width - (2*pageMargin), canvas.height - (2*pageMargin));
    
    // draw each column
    for(int i = 0; i < cols; i++)
    {
      canvas.rect(columns[i].x, columns[i].y, columns[i].w, columns[i].h);
    }
  }
}
