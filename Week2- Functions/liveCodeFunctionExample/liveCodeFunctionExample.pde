//We are going to make baker who takes ingredients and makes them into tasty food
//using functions, parameters, and return values


void setup() {
  bake1();
  bake2(2);
  bake3(4,"cake"); 
  bake3(4,"cake");  
  bake4(3,"pie");
  bake4(2,"pie");
  iAmHungry=bake5(20,"cupcake");
}
//fundmental function example
void bake1() {//each bake iteration builds on the last
  println("Baker bakes you a pie");
}
//adding parameters
void bake2(int servings) {
  println("Baker bakes you "+servings+" pie(s)");
}
//using multiple parameters and calling multiple times local variables
void bake3(int servings, String foodType) {
  println("Baker bakes you "+servings+" "+foodType+"(s)");
}
//accessing global variables, if else
int ingredients = 10;
void bake4(int servings, String foodType) {
  if (ingredients>=servings) {
   println("Baker bakes you "+servings+" "+foodType+"(s)");
   ingredients-=servings;
  }
  else {
    println("Baker has left for the store");
  }
}

//return type using a boolean if fed
Boolean iAmHungry;
Boolean bake5(int servings, String foodType) {
  if (ingredients>=servings) {
   println("Baker bakes you "+servings+" "+foodType+"(s)");
   ingredients-=servings;
   return true;
  }
  else {
    println("Baker has left for the store");
    return false;
  }
}
