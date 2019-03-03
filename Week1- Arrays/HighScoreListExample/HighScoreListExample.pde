String[] names = {"Chelsea", "Harry", "Munro", "Lionel", "Diana", "Juno", "Chloe", "Gerald", "Samus", "Isabelle"};
int[] scores = {3000, 2950, 2700, 2450, 2010, 1560, 1470, 1465, 1200, 1200};

int posY = 90;

void setup(){
  size(600, 600);
  background(0);
  fill(255);
  textSize(24);
  
  text("High Score List", 225, 30);
  
  //names = sort(names);
  //scores = sort(scores);
  //scores = reverse(scores);

  for(int i = 0; i < names.length; i++) {
    text(names[i], 180, posY);
    text(scores[i], 380, posY);
    posY += 50;
  }
}
