PImage background;
PImage bird;
PImage Tpipe;
PImage Bpipe;


int birdX = 50;
int birdY = 375;
int birdYVelocity = 40;
int birdXVelocity = 5;
int gravity = 2;
int pipeX = 500;
int pipeY = (int) random(-200,-20);
int gap = 200;
int BpipeY;

void draw(){
image(background, 0, 0);
image(bird, birdX, birdY);
image(Tpipe, pipeX, pipeY);
birdY += gravity;
pipeX -= birdXVelocity;
if(pipeX<-Tpipe.width){
  pipeX = 500;
  pipeY = (int) random(-200,-20);
}
BpipeY = Tpipe.height + pipeY + gap;
image(Bpipe, pipeX, BpipeY);
if(intersectsPipes()){
  println("The End");
  System.exit(0);
}
}

boolean intersectsPipes() { 
         if (birdY < (Tpipe.height + pipeY) && birdX > pipeX && birdX < (pipeX+Tpipe.width)){
            return true; }
        else if (birdY>BpipeY && birdX > pipeX && birdX < (pipeX+Tpipe.width)) {
            return true; }
        else { return false; }
}
void setup(){
size(500,750);
background = loadImage("flappyBackground.jpg");
Tpipe = loadImage("topPipe.png");
bird = loadImage("bird.png");
Bpipe = loadImage("bottomPipe.png");
bird.resize(50, 50);
}
void mousePressed(){
if (birdY>birdYVelocity){
  birdY -= birdYVelocity;
}
}
