import processing.video.*;
float threshold=15;
float disThreshold=50;

color trackColor = color(255, 0, 0);
ArrayList<Blob> blobs = new ArrayList<Blob>();
Capture video;
int w = 320;
int h = 240;

void setup() {
  size(320, 240);
  video = new Capture(this, w, h);
  video.start();
  trackColor = color(255, 0, 0);
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  image(video, 0, 0);
  blobs.clear();
  video.loadPixels();
  loadPixels();
  for (int x=0; x < w; x++)
    for (int y=0; y< h; y++) {
      int loc = x + y*w;
      color currentColor = video.pixels[loc];   
      float r = red(currentColor);
      float g = green(currentColor);
      float b = blue(currentColor);

      float r1 = red(trackColor);
      float g1 = green(trackColor);
      float b1 = blue(trackColor);

      float d = distC(r, g, b, r1, g1, b1);
      if (d < threshold*threshold) {
        boolean found = false;
        for (Blob b_ : blobs) {
          if (b_.isNear(x, y)) {
            b_.add(x, y);
            break;
          }
        }
        if (!found) {
          Blob temp = new Blob(x, y);
          blobs.add(temp);
        }
      }
    }
  for (Blob _b : blobs)
  {
    if(_b.size()>50)
    _b.show();
}
}

float distC(float p, float q, float r, float s, float t, float u) {
  return((p-s)*(p-s) + (q-t)*(q-t) + (r-u)*(r-u));
}

float distC(float p, float q, float r, float s) {
  return((p-r)*(p-r) + (q-s)*(q-s));
}

void mousePressed() {
  int loc = mouseX + mouseY * w;
  trackColor = pixels[loc];
}

void keyPressed() {
  if (key =='a') disThreshold+=5;
  else if (key =='s') disThreshold-=5;
}