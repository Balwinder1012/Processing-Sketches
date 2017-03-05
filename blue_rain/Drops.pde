class Drops{

  private float x =random(640);
  private float y=random(-600,0);
  private float z= random(20,50);
  private float speed= map(z,20,50,3,15);
  private float length= map(z,20,50,10,20);
  private float weight= map(z,20,50,1,2);
  private float i=1;
  
  void display(){
 if(y>height-1)
   i++;
    
    strokeWeight(weight);
  stroke(0,0,255);
 
  if(y>height)
   y=random(-1000,-100);
  line(x,y,x,y+length);
  
  strokeWeight(5+i);
  line(1,height,width,height);
 
  }
  
  void move(){
  y+=speed;

  }

}