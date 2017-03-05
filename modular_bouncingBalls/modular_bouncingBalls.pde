Ball[] b= new Ball[5];
void setup() {
  size(500, 400);
  for (int i=0; i<b.length; i++)
    b[i] = new Ball(random(200)+random(200), random(200)+random(200));
}
void draw() {

  background(207);



  for (int i=0; i<b.length; i++)
  {
    b[i].move();
    b[i].bounce();
    b[i].draw();
  }
}