

class Circle {
  int rad = 20;        // Width of the shape
  float x, y;    // Starting position of shape    
  
  float xspeed = random(-1,1);  // Speed of the shape
  float yspeed = random(-1,1);  // Speed of the shape
  
  int xdirection = 1;  // Left or Right
  int ydirection = 1;  // Top to Bottom 
  color circleColor=color(255);
  float mass=10;
  int id;
  
  Circle (float tempX, float tempY, int i){
    x=tempX;
    y=tempY;
    id=i;
  }
  
  void Move () {
    x = x + ( xspeed * xdirection );
    y = y + ( yspeed * ydirection );
  }
  
  void Bounce () {
    if (x > width-rad || x < rad) {
      xdirection *= -1;
    }
    if (y > height-rad || y < rad) {
      ydirection *= -1;
    }
  }
  
  void Collide () {
    boolean haveIcollided =false;
    for (Circle circ : circles) {  
      if (circ!=this) {
        if (dist(circ.x,circ.y,x,y)<rad+circ.rad) {            
          haveIcollided =true;
        } 
      }
    } 
    if(haveIcollided) {
      //rad++;
      circleColor=color(255,0,0); 
    }
    else {
      circleColor=color(255);
    }
  }
  void Collide2 () {
    for (int i = id+1; i < circles.length; i++) {  
        float dx = circles[i].x - x;
        float dy = circles[i].y - y;
        float distance = sqrt(dx*dx + dy*dy);
        float minDist = circles[i].rad + rad;
        if (distance < minDist) {         
          float angle = atan2(dy,dx);
          float targetX = x + cos(angle) * minDist;
          float targetY = y + sin(angle) * minDist;
          float ax = (targetX - circles[i].x) * 0.05;
          float ay = (targetY - circles[i].y) * 0.05;
          xspeed -= ax;
          yspeed -= ay;
          circles[i].xspeed += ax;
          circles[i].yspeed += ay;
        }
     } 
  }
  void Display () {
    fill(circleColor);
    ellipse(x, y, rad, rad);    
  }
}

Circle[] circles = new Circle[10];

void setup() 
{
  size(640, 360);  
  frameRate(30);
  ellipseMode(RADIUS);
  rectMode(CENTER);
  for (int i=0;i<circles.length;i++) {
    circles[i] = new Circle(random(100,width/2-100),random(100,height-100),i);
  }
}

void draw() 
{
  background(0);
  for (Circle circ : circles) {
    circ.Move();
    circ.Bounce();
    circ.Display();
  }
  for (Circle circ : circles) {
    circ.Collide();
  } 
  for (Circle circ : circles) {
    circ.Collide2();
  }
}
