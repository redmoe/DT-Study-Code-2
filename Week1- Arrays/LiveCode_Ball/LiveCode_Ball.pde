

class Circle {
  int rad = 20;        // Width of the shape
  float xpos, ypos;    // Starting position of shape    
  
  float xspeed = random(1,3);  // Speed of the shape
  float yspeed = random(1,3);  // Speed of the shape
  
  int xdirection = 1;  // Left or Right
  int ydirection = 1;  // Top to Bottom 
  color circleColor=color(255);
  float mass=10;
  
  Circle (float tempX, float tempY){
    xpos=tempX;
    ypos=tempY;
  }
  
  void Move () {
    xpos = xpos + ( xspeed * xdirection );
    ypos = ypos + ( yspeed * ydirection );
  }
  
  //void Collide () {
    
  //}
  void Bounce () {
    if (xpos > width-rad || xpos < rad) {
      xdirection *= -1;
    }
    if (ypos > height-rad || ypos < rad) {
      ydirection *= -1;
    }
  }
  
  void Collide () {
    boolean haveIcollided =false;
    for (Circle circ : circles) {  
      if (circ!=this) {
        
        if (dist(circ.xpos,circ.ypos,xpos,ypos)<rad+circ.rad) {
        //if (xpos+rad > circ.xpos-circ.rad 
        //  && xpos-rad < circ.xpos+circ.rad 
        //  && ypos+rad > circ.ypos-circ.rad 
        //  && ypos-rad < circ.ypos+circ.rad) {
          //ydirection *= -1;
          //xdirection *= -1;
          //circleColor= color(random(0,255),random(0,255),random(0,255));
           
          circleColor=color(255,0,0);
          haveIcollided =true;
          println("COLIDE");
         /// println("reverse Y");
        } 
      }
    } 
    if(!haveIcollided) {
     circleColor=color(255); 
    }
  }
  void CollidePVector () {
      
     for (Circle circ : circles) { 
      if (circ!=this) {
        PVector pVec=new PVector(xpos,ypos);
        PVector oVec=new PVector(circ.xpos,circ.ypos);
        PVector distanceVect= PVector.sub(pVec, oVec);
        float distanceVectMag = distanceVect.mag();
        if (distanceVectMag<float(rad+circ.rad)) {
          print("Collide");   
              if (xpos+rad > circ.xpos-circ.rad || xpos-rad < circ.xpos+circ.rad) {
                xdirection *= -1;
              }
              if (ypos+rad > circ.ypos-rad || ypos < rad) {
                ydirection *= -1;
              }
          //        if (xpos+rad > circ.xpos-circ.rad ||xpos-rad < circ.xpos+circ.rad 
          //&& ypos+rad > circ.ypos-circ.rad 
          //&& ypos-rad < circ.ypos+circ.rad) {
          //ydirection *= -1;
          //xdirection *= -1;
          //xspeed = (xspeed * (mass - circ.mass) + (2 * circ.mass * circ.xspeed)) / (mass + circ.mass);
          //yspeed = (yspeed * (mass - circ.mass) + (2 * circ.mass * circ.yspeed)) / (mass + circ.mass);
        } 
      }
    }     
          //PVector vec = new PVector(xpos,ypos);
          //PVector v=vec;
          //vec.normalize();
          //xdirection= -2*(vec * v);
          //ydirection=-vec − v;
  }
  
  void Display () {
    fill(circleColor);
    ellipse(xpos, ypos, rad, rad);    
  }
}
class Square {
  int xpos=width/2;
  int ypos=height/2;
  int radius=100;
  
  void Display () {
   rect(xpos,ypos,100,100); 
  }
  void Collide () {
    for (Circle circ : circles) {  
      println(dist(circ.xpos,circ.ypos,xpos,ypos));
     if (dist(circ.xpos,circ.ypos,xpos,ypos)<radius) {
       circ.xspeed= -circ.xspeed;
       circ.yspeed= -circ.yspeed;       
     }
    }
  }
}

Circle[] circles = new Circle[20];
Square square;
void setup() 
{
  size(640, 360);
 // noStroke();
  
  //what is frame rate?
 // frameRate(30);
  ellipseMode(RADIUS);
  rectMode(CENTER);
  // Set the starting position of the shape
  for (int i=0;i<circles.length;i++) {
    circles[i] = new Circle(random(width-100)+100,random(height-100)+100);
  }
  //square = new Square();
}

void draw() 
{
  background(0);
  for (Circle circ : circles) {
    circ.Move();
    circ.Bounce();
    circ.Display();
  }
  for (Circle circ : circles) {
    circ.Collide();
  }
  //square.Display();
  //square.Collide();
  //for (int i =0; i < circles.length;i++) {
  //  for (int f=0; f<circles.length;f++) {
      
  //}
}
