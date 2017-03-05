
int xspeed=5;
int circleX=0;
int circleY=0;
int yspeed=5;
void setup() {

  size(500,400);
  
}
void draw(){

  background(50,200,100);
  fill(250,100,100);

 
  circleX+=xspeed;
  circleY+=yspeed;
   
  if(circleX >= width || circleX<=0){
   xspeed*=(-1);
  }
  
  if(circleY >= height || circleY<=0){
   yspeed*=(-1);
  }
  

  ellipse(circleX,circleY,20,20);
   
}