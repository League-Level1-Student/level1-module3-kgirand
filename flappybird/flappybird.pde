PImage background;
PImage bird;
PImage Tpipe;

int birdX = 50;
int birdY = 375;
int birdYVelocity = 40;
int birdXVelocity = 5;
int gravity = 2;
int pipeX = 500;
int pipeY = (int) random(-200,-20);

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

}

void setup(){
size(500,750);
background = loadImage("flappyBackground.jpg");
Tpipe = loadImage("topPipe.png");
bird = loadImage("bird.png");
bird.resize(50, 50);
}
void mousePressed(){
if (birdY>birdYVelocity){
  birdY -= birdYVelocity;
}
}
