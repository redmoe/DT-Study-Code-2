Car fiat = new Car(color(0,255,0), 49,20);
Car audi = new Car(color(255,255,0), 20,10);

Car[] bunchOfCars = new Car[1000];

void setup() {
 size(500,500);
 for (int i=0; i < bunchOfCars.length; i++) {
   bunchOfCars[i] = new Car(color(255,0,0),int(random(0,height)),int(random(1,10)));
 }
}

void draw() {
  background(0);
  fiat.move();
  fiat.display();
 audi.move();
  audi.display();  
  for (int i=0; i < bunchOfCars.length; i++) {
   bunchOfCars[i].move();
   bunchOfCars[i].display();
 } 
}
//moves the car until it reaches the edge of screen where upon it's position is reset


//displays the car on screen at it's position


class Car {
  int xPos = 0;
  int yPos;
  int xSpeed = 5;
  color carColor;
  
  Car (color tempCarColor, int temporaryY, int tempXspeed) {
    carColor=tempCarColor;
    yPos=temporaryY;
    xSpeed=tempXspeed;
  }
  
  void display() {
    rectMode(CENTER);
    fill(carColor);
    rect(xPos,yPos,60,20);
  }
   void move() {
    xPos += xSpeed;
    if (xPos > width) {
    xPos = 0;
  }

}
}
