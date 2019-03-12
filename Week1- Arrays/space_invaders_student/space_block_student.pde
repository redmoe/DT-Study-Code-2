class Ship {
  int x = 250;
  int y = 650;
  float speed = 5;

  void Shoot () {
    if (keyCode == UP) {
      println("bullet");
      bullets.add(new Bullet(x, y));
    }
  }

  void Move () {
    if (keyPressed==true) {
      if (keyCode==RIGHT) {
        x+=speed;
      } else if (keyCode==LEFT) {
        x-=speed;
      }
    }
  }

  void Display () {
    triangle(x-25, y+25, x, y-25, x+25, y+25);
  }
}

class Bullet {
  int x;  
  int y;
  float speed=6;

  Bullet (int tempX, int tempY) {
    x=tempX;
    y=tempY;
  }
  void Collide () {

//*Enable this after everything else is done to get bullets to collide!
    //for (int i = 0; i < invaders.size(); i++) {
    //  Invader block = invaders.get(i);
    //  if (dist(x,y,block.x,block.y) < 50) {
    //    invaders.remove(block);
    //    bullets.remove(this);
    //  }
    //}
  }
  void Display () {
    ellipse(x, y, 10, 10);
    y-=speed;
  }
}




//*Turn the following code into an Invader Class:
  int x;
  int y;
  int directionSpeed = 1;
  
  //*create a constructor that takes two int parameters to set the Invader's x and y so each one will be at a diffrent position
  
  
  
  void Display () {
    rect(x, y, 45, 45);
  }
  void Move () {
    x+=directionSpeed;
    if (x<0 || x > width) {
      y+=50;
      directionSpeed= -directionSpeed;
    }
  }
  
//*END OF INVADER
  
  
  
  
int blockGridX = 10;
int blockGridY = 5;
Ship player = new Ship();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
  
//*Create an array list of Invader objects like the ^Bullets ArrayList


void setup () {
  size(500, 700);
  for (int x=0; x < blockGridX; x++) {
    for (int y=0; y < blockGridY; y++) {
      //*Add to the Invaders Arraylist an Invader Object for each grid position
      //*Invader_Array_Name.add(Invader_Object_Name(x*50, y*50));
    }
  }
}

void draw () {
  background(0);
  player.Display();

  //*This for loop will run through all Invaders in the Arraylist
  //for (Invader invader : invaders) {
  //  invader.Display();

  //*Call the Invader Move method too!

  //}

  for (int i = 0; i < bullets.size(); i++) {
    bullets.get(i).Display();
    bullets.get(i).Collide();
  }     
  player.Move();
}

void keyPressed() {
  player.Shoot ();
}
