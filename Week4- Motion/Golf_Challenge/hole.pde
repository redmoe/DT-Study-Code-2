//hole class
class hole {
  
  //class variables
  float x, y;
  
  //constructor
  hole(float tempX, float tempY) {
    x = tempX;
    y = tempY;
  }
  
  //methods
  void display(){
   fill(0);
   noStroke();
   ellipse(x, y, 50, 50);
  }
}
