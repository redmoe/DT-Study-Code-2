int rad = 20;        // Width of the shape
float x=20;
float y=120;    // Starting position of shape    

float xspeed = random(0,5);  // Speed of the shape
float yspeed = random(0,5);  // Speed of the shape

int xdirection = 1;  // Left or Right
int ydirection = 1;  // Top to Bottom 
color circleColor=color(255);

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

void Display () {
  fill(circleColor);
  ellipse(x, y, rad, rad);    
}

void setup() 
{
  size(640, 360);  
  frameRate(30);
  ellipseMode(RADIUS);
  rectMode(CENTER);
}

void draw() 
{
  background(0);
    Move();
    Bounce();
    Display();

}
