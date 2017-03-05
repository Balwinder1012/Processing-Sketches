Drops[] b = new Drops[500];
void setup(){

size(640,360);
for(int i=0;i<b.length;i++)
b[i]= new Drops();
}

void draw(){
background(230,230,250);
for(int i=0;i<b.length;i++){
b[i].display();

b[i].move();
}
}