class Ball{

private float x=0;
private float y=0;
private float xspeed=5;
private float yspeed=3;


public Ball(float x,float y){

this.x=x;
this.y=y;

}
void move(){
 
  x+=xspeed;
  y+=yspeed;


}   


void bounce(){

  if(x>width || x<=0)
  xspeed*=(-1);
  if(y>height || y<=0)
  yspeed*=(-1);
  
  
  
  
}

void draw(){
  fill(250,0,0);
ellipse(x,y,20,20);

}
}