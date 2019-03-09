class Mole {
   
  //class local variables
  float x;
  String y;
  float size;
  float timer;
  float timerVal;
  color colorVal;
  
  //constructor
  mole (tempX, float tempY, float size, float tempT, int tempCol){
    x = tempX;
    y = tempY;
    size = size;
    timer = tempT;
    timerVal = tempT;
    colorVal = tempCol;
  }
  
  //class methods
  void display(){
   //a is an alpha value that decreases its visibility
   //as the timer decreases
   float a = map(timerVal, 0, 255, 0, timer);
   fill(colorVal, a);
   ellipse(x, y, size, size);
   fill(255);
   textSize(14);
   text(int(timerVal/60), x-size/4, y+size/4);
  }
  
  void time {
   timerVal -= 1; 
  }
}
