int xPos = 0;
int yPos = 50;
float xSpeed = 5;
color carColor = color(255,0,0);

void setup() {
 size(500,500);
}

void draw() {
  background(0);
  move();
  display();
}
//moves the car until it reaches the edge of screen where upon it's position is reset
void move() {
  xPos += xSpeed;
  if (xPos > width) {
    xPos = 0;
  }
}

//displays the car on screen at it's position
void display() {
  rectMode(CENTER);
  fill(carColor);
  rect(xPos,yPos,60,20);
}
