//declare class objects
ball myBall;
hole theHole;

//declare variables
Boolean pressed;
Boolean win;

void setup() {
  
  //set frame size
  size(600, 600);
  
  //assign values
  win = false;
  pressed = false;
  
  //assign class variables
  myBall = new ball(30, 30, 0, 0);
  theHole = new hole(random(55, 545), random(55, 545));
}

void draw() {

  //if you've won, show the end screen
  if (win) {

    background(255, 0, 0);

    fill(255);
    textSize(36);
    text("You Win!", 250, 300);
    text("Click anywhere to start again", 50, 400);
    
  //otherwise, play the game
  } else {

    background(10, 200, 100);
    
    //theHole is displayed every frame
    theHole.display();
    
    //**every frame it displays and moves myBall
    myBall.display();

    //when myBall stops moving, you're allowed to
    //hit it again
    if (myBall.xspeed < .005 && myBall.yspeed < .005) {
      pressed = false;
      //display line between myBall and mouse
      //indicating it can be hit
      stroke(1);
      line(myBall.x, myBall.y, mouseX, mouseY);
    }

    //if the ball stops moving while it's
    //within the hole, win the game
    if (pressed == false) {
      if (myBall.x + 15 < theHole.x + 25 && myBall.x - 15 > theHole.x - 25 &&
        myBall.y + 15 < theHole.y + 25 && myBall.y - 15 > theHole.y - 25) {

        win = true;
        
      }
    }
  }
}

void mousePressed() {
  if (win) {
    //if you click on the end screen, it resets everything
    win = false;
    theHole.x = random(55, 545);
    theHole.y = random(55, 545);
    myBall.x = 30;
    myBall.y = 30;
    myBall.xspeed = 0;
    myBall.yspeed = 0;
    
  } else {
    //if you click while you're playing,
    if (pressed == false) {
      
      pressed = true;

      //it adds speed to myBall's x and y speeds
      //depending on the distance between it and the mouse
      if (mouseX < myBall.x) {
        myBall.xspeed -= dist(myBall.x, myBall.x, mouseX, mouseX)/100;
      } else {
        myBall.xspeed += dist(myBall.x, myBall.x, mouseX, mouseX)/100;
      }

      if (mouseY < myBall.y) {
        myBall.yspeed -= dist(myBall.y, myBall.y, mouseY, mouseY)/100;
      } else {
        myBall.yspeed += dist(myBall.y, myBall.y, mouseY, mouseY)/100;
      }
    }
  }
}
