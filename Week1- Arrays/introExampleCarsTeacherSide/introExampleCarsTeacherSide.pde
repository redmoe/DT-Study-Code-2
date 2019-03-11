//fundmental class
class Cat {}
Cat myCat = new Cat();
/*
A class is an idea, made up of data and functions
Objects are dervived from classes and are instances of it
So all objects of the same class will share properties and functions, 
but not nessarically have the same data in those properties
*/
void setup() {
 size(500,500); 
 
 myCars = new Car[20];
 for (int i = 0; i < myCars.length; i++) {
   myCars[i] = new Car(color(int(random(0,255)),int(random(0,255)),int(random(0,255))),int(random(0,width)),int(random(0,height)),random(1,10));
 }
 
}

int xPos = 0;
int yPos = 50;
int xSpeed = 5;
color carColor = 255;

void draw() {
  background(0);
  
  move();
  display();
  
  myCar.drive();
  myCar.display();
  
  for (int i = 0; i < myCars.length; i++) {
   myCars[i].drive();
   myCars[i].display();
  } 
}

void move() {
  xPos += xSpeed;
  if (xPos > width) {
    xPos = 0;
  }
}
void display() {
  rectMode(CENTER);
  fill(carColor);
  rect(xPos,yPos,60,20);
}

Car myCar = new Car(color(255,0,255),0,20,3.5);

//TIER 2: Classes
class Car {
 int xPos;
 int yPos;
 //can we make speed variable?
float xSpeed=5;
 color carColor=255;
 //the consturctor
 Car(color tempColor, int temporaryX, int temporaryY, float tempSpeed) {
   carColor=tempColor;
   xPos=temporaryX;
   yPos=temporaryY;
   xSpeed=tempSpeed;
 }
 void drive() {
   xPos += xSpeed;
   if (xPos > width) {
     //how do we fix this so it doesn't come in halfway?
     xPos = 0;
   }
 } 
 void display () {
   rectMode(CENTER);   
   fill(carColor);
   rect(xPos,yPos,60,20);
 }
}


Car[] myCars;
