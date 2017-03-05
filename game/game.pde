
float ballX=0;
float ballY=10;
float speedX=5;
float speedY=4;
float padding=100;
int h=height;
float hit=0;
float miss=0;
int check=1;
int check1=1;
int check2=1;
void setup(){
size(650,400);

}

void draw(){
  int w=width;
background(12,170,170);



ballX+=speedX;
ballY+=speedY;

fill(255,0,0);

if(ballX > w || ballX < 0)  speedX*=(-1);

if(ballY < 0 ) speedY*=(-1);
if(ballY >= height - 30 ) 

{
speedY*=(-1);
padding=padding-1;
//float distance =  abs(padding - ballX);
//println("ballX= "+ballX);
//println("mouse X = "+mouseX);
if( ballX >= (abs(mouseX - padding/2)) && ballX <= abs((mouseX + padding/2))) {hit++; }
else{
miss++;
ballX=random(0,width); 
ballY=0;
}



}

ellipse(ballX,ballY,25,25);

rect(mouseX - padding/2, height-10, padding, 10);
fill(0,255,0);
text("hit = "+hit,10,30);
text("miss = "+miss,10,50);

if(hit > 5 && check==1 )
{ speedX += random(1,2);  check=0; }

if(hit>10 && check1==1)
{ speedY+=random(1,2);; check1=0; }

if(hit >15 && check2==1)
{ speedX+=random(1,2); speedY+=random(1,2); check2=0; }
//if(hit>0)
//println(hit);
}

void mouseClicked(){
speedX++;speedY++;
}