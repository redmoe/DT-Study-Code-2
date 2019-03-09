class Sheep {
 
  float x;
  float y;
  color sheepColor;
  float speed;
  
  Sheep(float tempX, float tempY, color tempColor, float tempSpeed){
    x = tempX;
    y = tempY;
    sheepColor = tempColor;
    speed = tempSpeed;
  }
  
  void display(){
   fill(sheepColor);
   noStroke();
   ellipse(x-10, y, 50, 50);
   ellipse(x+10, y, 50, 50);
   fill(0);
   ellipse(x+10, y-10, 4, 4);
   ellipse(x+20, y-10, 4, 4);
  }
  
  void move(){
    x+=random(-speed, speed);
    y+=random(-speed, speed);
  }
}
