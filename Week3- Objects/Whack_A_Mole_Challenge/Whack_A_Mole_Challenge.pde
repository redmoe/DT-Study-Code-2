//**********************************************************
//WHACK-A-MOLE CHALLENGE
//When completed, this sketch will generate random Moles and
//BadMoles indefinitely. When clicked, a Molewill increase
//your score by one and a BadMole will decrease your score 
//by one.
//**********************************************************

//declaration of variables
Mole first;
BadMole a;
int score;
color moleColor;
color badMoleColor;

//Use arraylists rather than arrays because the number 
//of Moles/BadMoles will change dynamically over time.
ArrayList<Mole> moleList;
ArrayList<BadMole> badMoleList;

void setup() {
  size(600, 600);
  
  score = 0;
  moleColor = color(150, 75, 19);
  badMoleColor = color(240, 50, 50);
  
  first = new Mole(random(100, 500), random(100, 500), 20, 300, moleColor);
  a = new BadMole(random(100, 500),  random(100, 500), 20, 240, badMoleColor);
  
  //Initialize arraylists
  moleList = new ArrayList<Mole>();
  badMoleList = new ArrayList<BadMole>();
  
  moleList.add(first);
  badMoleList.add(a);
  
  frameRate(60);
}

void draw() {

  background(0);
  fill(255);
  textSize(24);
  text("Score: " + score, 50, 30);

  //Sets a 1/100 chance of generating a Mole
  //or BadMole every frame.
  int randomInt = int(random(0, 100));
  if (randomInt == 0){
    moleList.add(new Mole(random(100, 500), random(130, 500), random(20, 100), random(300, 600), moleColor)); 
  }  else if (randomInt == 1) {
    badMoleList.add(new BadMole(random(100, 500), random(130, 500), random(20, 100), random(300, 600), badMoleColor)); 
  }
  
  //Uses a for loop to get every Mole or BadMole in their
  //array and calls their display() function if their
  //timer value is above zero.
  for(int i = 0; i < moleList.size(); i++){
    moleList.get(i).time();
    if (int(moleList.get(i).timerVal/60) <= 0) {
      moleList.remove(i);
    } else {
      moleList.get(i).Display();
    }
  }
  
  for(int i = 0; i < badMoleList.size(); i++){
    badMoleList.get(i).time();
    if (int(badMoleList.get(i).timerVal/60) <= 0) {
      badMoleList.remove(i);
    } else {
      badMoleList.get(i).display;
    }
  }
}

void mousePressed(){
  //When the mouse is pressed, this if statement checks
  //if the mouse position is within a Mole ellipse. If true, 
  //it removes the Mole from its list and modifies your score.
  for(int i = 0; i < moleList.size(); i++){
    if (mouseX < (moleList.get(i).x + moleList.get(i).size/2) &&
       mouseX > (moleList.get(i).x - moleList.get(i).size/2) &&
       mouseY > (moleList.get(i).y - moleList.get(i).size/2) &&
       mouseY < (moleList.get(i).y + moleList.get(i).size/2)) {
         moleList.remove(i);
         score += 1;
    }
  }
  for(int i = 0; i < badMoleList.size(); i++){
    if (mouseX < (badMoleList.get(i).x + badMoleList.get(i).size/2) &&
       mouseX > (badMoleList.get(i).x - badMoleList.get(i).size/2) &&
       mouseY > (badMoleList.get(i).y - badMoleList.get(i).size/2) &&
       mouseY < (badMoleList.get(i).y + badMoleList.get(i).size/2)) {
         badMoleList.remove(i);
         score -= 1;
    }
  }
}
