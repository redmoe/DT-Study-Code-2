//ball class
class ball {
  
  //class variables
  float x, y, xspeed, yspeed;
  
  //ball constructor
  ball(float tempX, float tempY, float tempXspeed, float tempYspeed){
    x = tempX;
    y = tempY;
    xspeed = tempXspeed;
    yspeed = tempYspeed;
  }
  
  //methods
  void display(){
   fill(255);
   noStroke();
   ellipse(x, y, 30, 30);
  }
  
  void move() {
    
    //**add speed to position
    
    
    //**bounce off the edges
    
    
    //**modify x speed every time it's called
    //until it reaches zero
    
    ////**modify y speed every time it's called
    ////until it reaches zero
    
  }
}
