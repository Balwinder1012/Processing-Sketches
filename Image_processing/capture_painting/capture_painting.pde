import processing.video.*;

Capture balwinder; 

void setup() {
  
  size(1280, 960);
  balwinder = new Capture(this,Capture.list()[0]);
  balwinder.start();
  printArray(Capture.list());
  //background(255);
}

void captureEvent(Capture balwinder){

balwinder.read();
}


void draw() {

  
  
  
  
  for(int r = 0; r< 50000; r++)
  {
  
    float x=random(width);
    float y=random(height);
       color c = balwinder.get(int(x/2),int(y/2));
        noStroke();
        fill(c,25);
   
        ellipse(x,y,10,10);
  } 
    //  updatePixels();
}
    ////for(int x=0; x< width-1 ; x++)
    //// for(int y=0; y< height; y++){
    ////   int loc=x+y*width;
    ////   float r = red(balwinder.pixels[loc]);
    ////   float g = green(balwinder.pixels[loc+1]);
    ////   float b = blue(balwinder.pixels[loc]);
    ////   int a = 5 ;
    ////   pixels[loc] = color(r+a,g+a,b+a);

    ////pixels[x+y*width] = balwinder.pixels[x+y*width];

//

//

//

//

//

//

//  ////  loadPixels();
  ////balwinder.loadPixels();
  ////image(balwinder,0,0);
  ////for(int i=0; i< width ; i++)
  //// for(int j=0; j< height; j++)
  //// {
  ////  int loc = i    +  j*width;
  ////  int loc1 = i+1 +  j*width;
  ////  pixels[loc] = balwinder.pixels[loc];
  ////  //float b1 = brightness(balwinder.pixels[loc]);
  ////  //float b2 = brightness(balwinder.pixels[loc1]);

  ////  //float diff = b1-b2;
  ////  //if(diff>10)
  ////  //pixels[loc] = color(0,0,0);
  ////  //else
  ////  //pixels[loc] = color(255,255,255);
  //// }

 // //updatePixels();
///}//