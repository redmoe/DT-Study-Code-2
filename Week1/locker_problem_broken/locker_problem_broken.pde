//https://youtu.be/c18GjbnZXMw?list=PLJicmE8fK0EiFRt1Hm5a_7SJFaikIFW30&t=59


//* things that need fixing *

//*create a 100 locker array*
Boolean[] lockers;

//int for which lockers to open
int Key = 0;

void setup () {
 //*how large does the screen size need to be to fit all lockers?*
 size(480,250);
}


void draw () {
  //if the Key does not exceed the length then open/close lockers!*
  if (Key!=lockers.length) {
    
    //*make the loop run the same number of times as there are lockers*
   for (int n = Key; n < 0; n+=Key+1) {
     
     //*if the locker is open close it. if it's closed, open it!*
     lockers[n] = 
     

     
     //*changes the locker color depending on wheter it is open or not*
     if (lockers[n]) fill(0); 
     
     else fill(0);
     
     //creates a 20 by 5 grid of rectangles
     rect(n%20*50,floor(n/20)*50,40,40);
     
     //*get the locker number to be ontop of the matching locker*
     fill(0);
     text(str(n+1),0,0,40,40);       

   }
   Key++;
  }
  //makes the program stop for a bit to give some animation time
  delay(100);  
}
