import processing.video.*;

//variables
Capture video;
PImage image;

void setup() {
  size(320, 240);
  video = new Capture(this, 320, 240);
  video.start();

  image = createImage( 320, 240, RGB);
}

void draw() {
  image(video, 0, 0);
  loadPixels();
  video.loadPixels();
  image.loadPixels();
  for (int x=0; x<width; x++)
    for (int y=0; y<height; y++) {
      int loc = x + y*width;
      color currentColor = video.pixels[loc];
      float r = red(currentColor);
      float g = green(currentColor);
      float b = red(currentColor);

      color imageColor = image.pixels[loc];
      float r1 = red(imageColor);
      float g1 = green(imageColor);
      float b1 = blue(imageColor);

      float d  = dist(r, g, b, r1, g1, b1);
      if (d > 100)
        pixels[loc]=color(255, 255, 255);
      else
        pixels[loc]=color(0);
    }
  updatePixels();
}

void captureEvent(Capture video) {

  image.copy(video, 0, 0, width, height, 0, 0, width, height);
  image.updatePixels();

  video.read();
}