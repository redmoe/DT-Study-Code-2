class ball {

  float x, y, radius, xspeed, yspeed;

  ball(float tempX, float tempY, float tempR, float tempXS, float tempYS) {
    x = tempX;
    y = tempY;
    radius = tempR;
    xspeed = tempXS;
    yspeed = tempYS;
  }

  void display() {
    fill(255, 0, 0);
    noStroke();
    ellipse(x, y, radius*2, radius*2);
  }

  void move() {
    x += 2 * xspeed;
    y += 2 * yspeed;

    if (x + radius >= width ||
      x - radius <= 0) {
      xspeed *= -1;
    }

    if (y + radius >= height ||
      y - radius <= 0) {
      yspeed *= -1;
    }
  }
}
