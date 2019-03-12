//https://www.youtube.com/watch?v=mmkCS5eA4f8&list=PLJicmE8fK0EiFRt1Hm5a_7SJFaikIFW30&index=10
class Wizard {
  String name;
  String transformation;  
  int successRate;
  color wizardColor;
  color strokeColor;
  int x;
  int y;
  int wins;

  Wizard (String tempName, String tempTransfomation, int tempSuccessRate, int tempX, int tempY, color tempColor) {
    name=tempName;
    successRate=tempSuccessRate;
    transformation=tempTransfomation;
    wizardColor=tempColor;
    strokeColor=wizardColor;
    x=tempX;
    y=tempY;
  }
  void Display() {
    stroke(this.strokeColor);
    fill(this.wizardColor);
    ellipse(x, y, 100, 100);
    textAlign(CENTER);
    fill(0);
    textSize(16);
    text(name, x, y);
    text(successRate, x, y-16);
  }
  void CastSpell() {
    if (successRate!=0) {
      int castRoll=(int)random(0, 100);
      if (castRoll<this.successRate) {
        Wizard target=Target();
        println(this.name+" transforms "+target.name+" into "+this.transformation); 
        target.name=transformation;
        target.successRate=0;
        target.strokeColor=this.wizardColor;
        standingWizards--;
        strokeWeight(20);
        stroke(wizardColor);
        line(this.x, this.y, target.x, target.y);
      } else {
        println(this.name+" rolls a "+castRoll+" and miss casts");
      }
    } else {
      println(this.name+" is out of the duel");
    }
  }
  Wizard Target() {
    Wizard targetA = wizards[0];
    Wizard targetB = wizards[0];
    for (int i = 0; i < wizards.length; i++) {
      if (wizards[i]!=this) {
        if (targetA==null) targetA=wizards[i]; 
        else targetB=wizards[i];
      }
    }
    if (targetA.successRate < targetB.successRate ) {
      return targetB;
    } else {
      return targetA;
    }
  }
}


//change out your wand for the Noetheer 9000
Wizard You = new Wizard("Banneker", "vines", 60, 300, 100, color(50, 50, 255));

Wizard Newt_Niz = new Wizard("Newt-Niz", "a fish", 70, 100, 400, color(255, 50, 50));

Wizard Lieb_Ton = new Wizard("Lieb-Ton", "a statue", 90, 500, 400, color(255, 255, 50));

Wizard[] wizards = {Newt_Niz, Lieb_Ton, You};
int standingWizards=wizards.length;


//"Newt-Niz","fish",70
//"Lieb-Ton","statues",90

//"Banneker","vines",60
//"Gaussian","tree",80
//"Noetheer 9000","teleport to mountain top",100

int whoseTurn=0;
Boolean gameOver =false;
void setup () {
  size(600, 600);
  frameRate(2);
}

void Round () {
  whoseTurn++;
  if (standingWizards==1) {
    for (Wizard wizardObject : wizards) {
      if (wizardObject.successRate!=0) {
        println(wizardObject.name+" won!");
        wizardObject.wins++;
      }
    }
    gameOver=true;
  } else if (whoseTurn>=wizards.length) {
    if (standingWizards==3) {
      println("Everyone is transformed into cats!");
      for (Wizard wizardObject : wizards) {
        wizardObject.name="a cat";
      } 
      gameOver=true;
    } else {
      whoseTurn=0;
    }
  }
}

void draw () {
  if (!gameOver) {
    println(whoseTurn);
    wizards[whoseTurn].CastSpell(); 
    Round();
  }
  for (Wizard i : wizards) {
    i.Display();
  }
}
