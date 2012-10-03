class Word
{
   String input;
  
   Word (String input_)
  {
     input = input_;
  }
  
  void write()
  {
    input = input.toLowerCase();
    
    for (int i=0; i<input.length(); i++)  
    {
       char letter = input.charAt(i);
       
       switch(letter)
       {
         case 'f':
           
       }
    }
  }
  
}
