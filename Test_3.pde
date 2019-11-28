PImage bg;
int circleX = 666;
int circleY = 100;
int firkantX =  600;
int firkantY = 30;
int xspeed;
int xpos;

void setup() {
  size(2000, 1333);
  
  bg = loadImage("wolken-himmel.jpg");
  xpos = width/2;
  xspeed = 0;
  frameRate(2000);
}

void draw() {
  background(bg);
  stroke(0);
  fill(175);
  ellipse(circleX, circleY, 100, 100);
  circleY++;
  if(circleY >height) {
    circleY = 0;
  }
    xpos+=xspeed;
    if(xspeed>0)
    xspeed = xspeed-1;
    if(xspeed>0)
    xspeed = xspeed+5;
    
  
  if(circleX>=height)circleX = 0;

if (mousePressed == true) {
  fill (0);

}else{
  fill(255);

}
rect(firkantX, firkantY, 200, 100);
}
void mousePressed() {
  circleX += 10;
  if(key==RIGHT)
  xspeed = 5;
  
}
