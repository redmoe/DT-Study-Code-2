//https://youtu.be/c18GjbnZXMw?list=PLJicmE8fK0EiFRt1Hm5a_7SJFaikIFW30&t=59


//* things that need fixing *

//*create a 100 locker array, in this program true will mean the door is open and false closed*
Boolean[] lockers;

//int for which lockers to open
int personNumber = 0;

void setup () {
 //*how large does the screen size need to be to fit all lockers?*
 size(480,250);
 for (int i = 0; i < lockers.length; i++) {
   //*assign a initial value to each locker so it does'nt return null and each locker is initally closed
    lockers[i]=?;
  } 
}

void draw () {
  //if the personNumber does not exceed the length then open/close lockers!
  if (personNumber!=lockers.length) {
    
    //*limit the for loop to the number of lockers*
   for (int lockerNumber = personNumber; lockerNumber < ???; lockerNumber+=personNumber+1) {
     
     //*if the locker is open close it. if it's closed, open it!*
     lockers[lockerNumber] = 
     

     
     //*changes the locker color depending on wheter it is open or not*
     if (lockers[lockerNumber]) fill(0); 
     
     else fill(0);
     
     //creates a 20 by 5 grid of rectangles
     rect(lockerNumber%20*50,floor(lockerNumber/20)*50,40,40);
     
     //*get this text that labels each locker to be ontop of the matching locker*
     fill(0);
     text(str(lockerNumber+1),0,0,40,40);       

   }
   personNumber++;
  }
  //makes the program stop for a bit to give some animation time
  delay(100);  
}
