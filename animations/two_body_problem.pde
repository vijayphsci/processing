 PVector r1=new PVector(300,900);
 PVector r2=new PVector(700,900);
 PVector v1=new PVector(0,-1);
 PVector v2= new PVector(0.2,0.1);
 float m1=1;
 float m2=1;
 color col1=color(random(0,255),random(0,255),random(0,255));
  color col2=color(random(0,255),random(0,255),random(0,255));
void setup(){
    background(0);
size(1000,1000);
  frameRate(100);
}
void draw(){

 float  gconst=1000;
  PVector r= PVector.sub(r2,r1);
 float d=r.mag();
 PVector f1=r.normalize().get();
 f1.mult(gconst*m2/(d*d));
 PVector f2=r.normalize().get();
 f2.mult(-gconst*m1/(d*d));
 v1.add(f1);
 r1.add(v1);
 v2.add(f2);
 r2.add(v2);
  
  fill(col1);
  noStroke();
  circle(r1.x,r1.y,4);
  fill(col2);
  noStroke();
  circle(r2.x,r2.y,4);
  
  
  
  
  
}
