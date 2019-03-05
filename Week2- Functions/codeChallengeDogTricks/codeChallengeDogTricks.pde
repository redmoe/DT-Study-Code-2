/*
This program is a advanced dog simulator designed to teach military-grade functions
Your mission: Make the dog do the following in order using only function calls in Draw:
1. Shake
2. Bark 4 times
3. Roll over
4. Fetch a chew toy and print it out
5. Draw a dog of size 50
*/
String dogName="Dog";

void setup() {
  size(400,400);
  frameRate(4);
}
void draw() {
  background(255);
//!!!Put your dog commands here!!!






}
void ShakeHand() {
  println(dogName+" shakes your hand");
}

//*make the dog bark the same number of times as the parameter
void Bark(int numberOfBarks) {
  fill(0);
  textSize(32);
  String barkString ="";
  for (int i=0;i<numberOfBarks;i++) {
    barkString+="Bark!";
    println(dogName+" Barks!");
  }
  text(barkString,-150,200);
}

//Draws the dog with a size
void DrawDog (int dogSize) {
  fill(#745a3a);
  rect(0,0,dogSize,dogSize);
}

int dogRoll=0;
//uses rotate to create a animation of the dog rolling
void RollOver() {
   translate(200,200);
    if (dogRoll!=360) {
     dogRoll+=90;
     rotate(radians(dogRoll));
    }
    else {
      dogRoll=0;
    }
}

String[] toys={"ball","chew toy","fluffy bunny","disc"};
//Gets a toy from the toy box
String Fetch(int indexOfToy) {
  println(dogName+" fetches you a "+toys[indexOfToy]);
  return toys[indexOfToy];
}
