//class Word
//{
//   String input;
//   Letter[] letters;
//   
//   Word (String input_, float startX_, float startY_, float distX_, float distY_)
//  {
//     input = input_;
//     startX = startX_;
//     startY = startY_;
//     distX = distX_;
//     distY = distY_;
//     
//     letters = new Letter[input.length()];
//  }
//  
//  void write()
//  {
//    input = input.toLowerCase();
//    
//    for (int i=0; i<input.length(); i++)  
//    {
//       char thisChar = input.charAt(i);
//       float thisX = startX + 3*i*distX;
//       
//       switch(thisChar)
//       {
//         case 'a':
//           letters[i].a(thisX, startY, distX, distY);
//         case 'b':
//           letters[i].b(thisX, startY, distX, distY);
//         case 'c':
//           letters[i].c(thisX, startY, distX, distY);
//         case 'd':
//           letters[i].d(thisX, startY, distX, distY);
//         case 'e':
//           letters[i].e(thisX, startY, distX, distY);
//         case 'f':
//           letters[i].f(thisX, startY, distX, distY);
//         case 'g':
//           letters[i].g(thisX, startY, distX, distY);
//         case 'h':
//           letters[i].h(thisX, startY, distX, distY);
//         case 'i':
//           letters[i].i(thisX, startY, distX, distY);
//           thisX -= distX;
//         case 'j':
//           letters[i].j(thisX, startY, distX, distY);
//         case 'k':
//           letters[i].k(thisX, startY, distX, distY);
//         case 'l':
//           letters[i].l(thisX, startY, distX, distY);
//         case 'm':
//           letters[i].m(thisX, startY, distX, distY);
//         case 'n':
//           letters[i].n(thisX, startY, distX, distY);
//         case 'o':
//           letters[i].o(thisX, startY, distX, distY);
//         case 'p':
//           letters[i].p(thisX, startY, distX, distY);
//         case 'q':
//           letters[i].q(thisX, startY, distX, distY);
//         case 'r':
//           letters[i].r(thisX, startY, distX, distY);
//         case 's':
//           letters[i].s(thisX, startY, distX, distY);
//         case 't':
//           letters[i].t(thisX, startY, distX, distY);
//         case 'u':
//           letters[i].u(thisX, startY, distX, distY);
//         case 'v':
//           letters[i].v(thisX, startY, distX, distY);
//         case 'w':
//           letters[i].w(thisX, startY, distX, distY);
//         case 'x':
//           letters[i].x(thisX, startY, distX, distY);
//         case 'y':
//           letters[i].y(thisX, startY, distX, distY);
//         case 'z':
//           letters[i].z(thisX, startY, distX, distY);
//       }
//    }
//  }
//  
//}
