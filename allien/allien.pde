void setup() {
  size(500, 450);

}
void draw() {
  background(100, 200, 300);
  fill(0, 250, 0);
  ellipse(260, 100, 80, 80);
  line(240, 82, 245, 82);
  line(275, 82, 280, 82);
  line(262, 100, 262, 110);

  line(260, 140, 260, 180);
  fill(100, 250, 100);
  ellipse(260, 190, 40, 70);
  line(255, 225, 250-random(8), 255);
  line(265, 225, 270+random(8), 255);
  
}