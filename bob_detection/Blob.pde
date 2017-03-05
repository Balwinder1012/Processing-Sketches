class Blob {

  float minx;
  float maxx;
  float miny;
  float maxy;
  
  Blob(int x, int y) {
   minx = x;
   maxx = x;
   miny = y;
   maxy = y;
  }
  void add(float x, float y) {
   minx = min(x,minx);
   maxx = max(x,maxx);
   miny = min(y,miny);
   miny = min(y,miny);
    
  }
  float size(){
    return((maxx-minx)*(maxy-miny));
    
  }

  boolean isNear(float x,float y) {
   
   float cx = max( (min(maxx,x)) , minx); 
   float cy = max( (min(maxy,y)) , miny);
   float d = distC(cx,cy,x,y);
   if(d < disThreshold*disThreshold){
   return true;
   } else return false;
  }




  void show() {
   stroke(0);
   strokeWeight(1);
   fill(255);
   rectMode(CORNERS);
   rect(minx,miny,maxx,maxy);
  }
}