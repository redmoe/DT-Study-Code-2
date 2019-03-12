class Ball {
  float x=height/2;
  float y=width/2;
  float speed=10;
  float radius=50;
  void moveTowards() {
   if (abs(x - mouseX)+abs(y - mouseY) > speed) {
     float angle= atan2(mouseY - y, mouseX - x);
     x = x + speed * cos(angle);
     y = y + speed * sin(angle);    
   }
   else {
    speed= -speed; 
   }
  }
  void CheckWall () {
    if (x<0 || x>width || y<0 || y>height) {
     speed=-speed; 
    }
  }
  void display () {
    fill(255,127,0);
    ellipse(x,y,50,50);
  }
}
Ball ball = new Ball();


void setup () {
  size(300,300);
}

void draw () {
  background(0);
  ball.moveTowards();
  ball.display(); 
  ball.CheckWall();
}
