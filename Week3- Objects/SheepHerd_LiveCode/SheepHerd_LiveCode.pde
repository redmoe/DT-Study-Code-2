//in this live code, we will create a herd of sheep
//all of whom have independent color variables
//and move on their own with different speeds

//when you create an object from a custom class, initialize
//a new one as you would any other type of variable - 
//with a variable type and a name
Sheep mySheep1;
Sheep mySheep2;

void setup(){
  size(600, 600);
  background(100, 200, 100);
  
  //assign each object to be a class using the same variable
  //parameters that are set in the class's constructor
  mySheep1 = new Sheep(400, 400, color(244, 244, 244), 1);
  mySheep2 = new Sheep(200, 300, color(200, 150, 60), 3);
}

void draw(){
  background(100, 200, 100);
  mySheep1.display();
  mySheep2.display();
  mySheep1.move();
  mySheep2.move();
}
