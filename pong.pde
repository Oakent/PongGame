Ball myball;
player player1;


void setup(){
  size(300,300);
  float ranspeed = random(0,5);
  myball = new Ball(color(0,255,0),50,50,ranspeed,5,3);
  player1 = new player(color(0,0,255),10,290,0,5);
}

void draw() {
  background(255);
  myball.move();
  myball.display();
  player1.display();
  player1.move();
}

class Ball {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  float lives;
  
  Ball(color tempc, float tempxpos, float tempypos, float tempxspeed, float tempyspeed, float templives) {
    c = tempc;
    xpos = tempxpos;
    ypos = tempypos;
    xspeed = tempxspeed;
    yspeed = tempyspeed;
    lives = templives;
  }

  void display() {
    stroke(0);
    fill(c);
    ellipse(xpos,ypos,10,10);
  }
    void move() {
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;
    if (xpos > width) {
      xspeed=xspeed*-1;
    }
    if (ypos>height) {
      yspeed=yspeed*-1;
      lives--;
    }
    if(xpos < width-300) {
      xspeed=xspeed*-1;
    }
    if(ypos < height-300){
      yspeed = yspeed*-1;
    }
    if(lives<1){
      c = color(235, 145, 180);
    }
    }
}

class player {
  color c;
  float xpos;
  float ypos;
  int score;
  float zxspeed;
  
  player(color tempc, float tempxpos, float tempypos, int tempscore, float tempxspeed) {
    c = tempc;
    xpos= tempxpos;
    ypos = tempypos;
    score = tempscore;
    zxspeed = tempxspeed;
  }
 void display(){
   fill(c);
   rectMode(CENTER);
   rect(xpos,ypos,40,10);
 }
void move() {
  if(keyPressed==true){
    if(key=='a'){
      if(xpos<20){
      }
      else{
      xpos = xpos - zxspeed;
      }
    }
    if(key=='d'){
      if(xpos>width-20){
      }
    else{
        xpos=xpos+zxspeed;
      }
    }
  }
 }
}
