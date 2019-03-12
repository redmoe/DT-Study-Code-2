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
    for (int i = 0; i < blocks.size(); i++) {
      Block block = blocks.get(i);
      if (dist(x, y, block.x, block.y) < 50) {
        blocks.remove(block);
        bullets.remove(this);
      }
    }
  }
  void Display () {
    print(x);

    ellipse(x, y, 10, 10);
    y-=speed;
  }
}

class Block {
  int x;
  int y;
  int directionSpeed = 1;
  Block (int tempX, int tempY) {
    x=tempX;
    y=tempY;
  }
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
}


int blockGridX = 10;
int blockGridY = 5;
ArrayList<Block> blocks = new ArrayList<Block>();
Ship player = new Ship();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();

void setup () {
  size(500, 700);
  for (int x=0; x < blockGridX; x++) {
    for (int y=0; y < blockGridY; y++) {
      blocks.add(new Block(x*50, y*50));
    }
  }
}

void draw () {
  background(0);
  player.Display();
  for (Block blockInstance : blocks) {
    blockInstance.Move();
    blockInstance.Display();
  }
  for (int i = 0; i < bullets.size(); i++) {
    print(bullets.size());
    bullets.get(i).Display();
    bullets.get(i).Collide();
  }    
  player.Move();
}

void keyPressed() {
  player.Shoot ();
}
