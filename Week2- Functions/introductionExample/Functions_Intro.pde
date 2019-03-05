//processing has built-in functions
//explain setup() and draw() first
//setup runs at start
//draw runs every frame
void setup(){
  size(600, 600);
  //changeBackground();
  //drawEllipse(300, 200);
  //println(complexMath(9));
}

void draw(){
  //changeBackground();
  //drawEllipse(random(600), random(600));
}

//this is a custom function
//it only does what we want it to, when we call it
void changeBackground(){
  background(random(255), random(255), random(255));
}

//this is a function that takes a parameter
//you have to define the parameters by variable type
void drawEllipse(float x, float y){
  ellipse(x, y, 100, 250);
}

//this is a function that returns a value
float complexMath(float n){
  float m = ((n * 80) - (2 % n) / 5);
  return m;
}
