int frogX = 400;
int frogY = 550;
int RXcar = 850;
int RYcar = 400;
int LXcar = -20;
int LYcar = 300;
void draw(){
 background(#6A5C5C); 
 fill(#00B248);
 ellipse(frogX,frogY, 40,40);
 Car(RXcar, RYcar);
 Car(LXcar, LYcar);
 LXcar ++;
 println(frogX + " "+frogY + " " + RXcar + " " + RYcar);
 if(intersects(RXcar,RYcar)){
  frogX = 400;
  frogY = 550;
 }
 if(intersects(LXcar, LYcar)){
  frogX = 400;
  frogY = 550;
 }
 if(RXcar<=800){
    RXcar +=5;
 }
 else{
  RXcar = -20; 
 }
 if(LXcar>=-100){
    LXcar -=5;
 }
 else{
  LXcar = 800; 
 }
}

void setup(){
 size(800,600); 
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP){
      frogY -= 50;
    }
    if(keyCode == DOWN){
     frogY += 50; 
    }
    if(keyCode == RIGHT){
     frogX += 50; 
    }
    if(keyCode == LEFT){
     frogX -= 50; 
    }
   }
  
if(frogY > 600){
  frogY = 580;
}
if(frogY < 0){
 frogY = 20; 
}
if(frogX > 800){
 frogX = 780;  
}
if(frogX < 0){
 frogX = 20; 
}
}
void Car(int x, int y){
 fill(#C1041A);
 ellipse(x, y, 100, 50);
 
}
boolean intersects(int Xcar, int Ycar) {
 if ((frogY >= Ycar && frogY <= Ycar+50) &&
                (frogX > Xcar && frogX < Xcar+100)) {
   return true;
  }
 else  {
  return false;
 }
}
