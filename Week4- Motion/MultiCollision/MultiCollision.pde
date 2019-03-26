

class Circle {
  int rad = 20;        // Width of the shape
  float xpos, ypos;    // Starting position of shape    
  
  float xspeed = random(-3,3);  // Speed of the shape
  float yspeed = random(-3,3);  // Speed of the shape
  
  int xdirection = 1;  // Left or Right
  int ydirection = 1;  // Top to Bottom 
  color circleColor=color(255);
  float mass=10;
  
  Circle (float tempX, float tempY){
    xpos=tempX;
    ypos=tempY;
  }
  
  void Move () {
    xpos = xpos + ( xspeed * xdirection );
    ypos = ypos + ( yspeed * ydirection );
  }
  
  void Bounce () {
    if (xpos > width-rad || xpos < rad) {
      xdirection *= -1;
    }
    if (ypos > height-rad || ypos < rad) {
      ydirection *= -1;
    }
  }
  
  void Collide () {
    boolean haveIcollided =false;
    for (Circle circ : circles) {  
      if (circ!=this) {
        if (dist(circ.xpos,circ.ypos,xpos,ypos)<rad+circ.rad) {            
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
  void Display () {
    fill(circleColor);
    ellipse(xpos, ypos, rad, rad);    
  }
}

Circle[] circles = new Circle[20];

void setup() 
{
  size(640, 360);  
  frameRate(30);
  ellipseMode(RADIUS);
  rectMode(CENTER);
  for (int i=0;i<circles.length;i++) {
    circles[i] = new Circle(random(width/2,width/2)+100,random(height-100)+100);
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
