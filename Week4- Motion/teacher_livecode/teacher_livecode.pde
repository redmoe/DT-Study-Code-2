class Circle {
  int rad = 20;        // Width of the shape
  float x, y;    // Starting position of shape    
  
  float xspeed = random(0,5);  // Speed of the shape
  float yspeed = random(0,5);  // Speed of the shape
  
  int xdirection = 1;  // Left or Right
  int ydirection = 1;  // Top to Bottom 
  color circleColor=color(255);
  
  Circle (float tempX, float tempY){
    x=tempX;
    y=tempY;
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
    boolean collided = false;
    for (Circle circ : circles) {  
      if (circ!=this) {
        if (dist(circ.x,circ.y,x,y)<rad+circ.rad) {            
          collided =true;
        } 
      }
    } 
    if(collided) {
      circleColor=color(255,0,0); 
    }
    else {
      circleColor=color(255);
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
    circles[i] = new Circle(random(100,width/2-100),random(100,height-100));
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
}
