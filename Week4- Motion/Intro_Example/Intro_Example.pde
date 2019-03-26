ball redball;

void setup(){
  size(600, 600);
  redball = new ball(random(50, 550), random(50, 550), 25, 2, 2);
  frameRate(2);
}

void draw() {
  background(255);
  fill(255, 0, 0);
  redball.display();
  redball.move();
}
