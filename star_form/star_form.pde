

float r;
int total = 0;
int factor = 0;

void setup(){
  frameRate(1);
  size(640, 640);
  r = width/2 - 16;
}


void draw(){
  total = 10;
  background(0);
  factor +=1;
  translate(width/2, height/2);
  stroke(255);
  noFill();
  circle(0,0,r*2);
  
  for(int i = 0; i < total; i++){
    PVector v = getVector(i, total);
    fill(225);
    circle(v.x,v.y,10);
 }
 
for(int i = 0; i < total; i++){
 PVector a = getVector(i, total);
 PVector b = getVector(i+factor, total);
 line(a.x, a.y, b.x, b.y);
}
  
}

PVector getVector(float index, int total){
  float angle = map(index, 0, total, 0, TWO_PI);
  PVector v = PVector.fromAngle(angle);
  v.mult(r);
  return v;
}
//Code referenced: Cardiod visualization Daniel Shiffman, Coding train 
//https://www.youtube.com/watch?v=bl3nc_a1nvs
