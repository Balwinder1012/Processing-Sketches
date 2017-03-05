PImage frog; 
void setup() {
  size(858,536);
  frog = loadImage("frog.jpg");
}



void draw() {
  
  loadPixels();
  frog.loadPixels();
  
  for(int i=0; i< width ; i++)
   for(int j=0; j< height; j++)
   {
    int loc = i+j*width;
    float r = red(frog.pixels[loc]);
    float g = green(frog.pixels[loc]);
    float b = blue(frog.pixels[loc]);
    
    
   pixels[loc] = color((r+mouseX)%255,(g+mouseX)%255,(b+mouseX)%255);
   
   }
  
  updatePixels();
  
 
}