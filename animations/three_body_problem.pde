int len1=1000;
int len2=1000;
float l=250;
float vel1=1;
float vel2=1;
 PVector r1=new PVector(len1/2,len2/2-l);
 PVector r2=new PVector(len1/2-sqrt(3)*l/2,len2/2+l/2);
 PVector r3=new PVector(len1/2+sqrt(3)*l/2,len2/2+l/2);
 PVector v1=new PVector(-vel1/2,vel1*sqrt(3)/2);
 PVector v2= new PVector(-vel2/2,-vel2*sqrt(3)/2);
 PVector v3=new PVector(vel1/2+vel2/2,-vel1*sqrt(3)/2+vel2*sqrt(3)/2); 
 

 
 //PVector r1=new PVector(300,500);
 //PVector r2=new PVector(700,500);
 //PVector r3=new PVector(500,500);
 //PVector v1=new PVector(0,-1);
 //PVector v2= new PVector(-1,1);
 //PVector v3=new PVector(0.1,-0.6); 
 float m1=1;
 float m2=1;
 float m3=1;
 color col1=color(random(0,255),random(0,255),random(0,255));
  color col2=color(random(0,255),random(0,255),random(0,255));
  color col3=color(random(0,255),random(0,255),random(0,255));
void setup(){
    
size(1000,1000);
  //frameRate(100);
  background(0);
}
void draw(){
//background(0);
 float  gconst=1500;
  PVector R1= PVector.sub(r2,r1);
  PVector R2=PVector.sub(r3,r1);
  PVector R3=PVector.sub(r3,r2);
  
 float d1=R1.mag();
 float d2=R2.mag();
 float d3=R3.mag();
 
 
 PVector f12=R1.normalize().get();
 f12.mult(gconst*m2/(d1*d1));
 PVector f13=R2.normalize().get();
 f13.mult(gconst*m3/(d2*d2));
  PVector f1=PVector.add(f12,f13);



PVector f21=R1.normalize().get();
 f21.mult(-gconst*m1/(d1*d1));
 PVector f23=R3.normalize().get();
 f23.mult(gconst*m3/(d3*d3));
  PVector f2=PVector.add(f21,f23);


PVector f31=R2.normalize().get();
 f31.mult(-gconst*m1/(d2*d2));
 PVector f32=R3.normalize().get();
 f32.mult(-gconst*m2/(d3*d3));
  PVector f3=PVector.add(f31,f32);


 
 
 v1.add(f1);
 r1.add(v1);
 
 v2.add(f2);
 r2.add(v2);
  
  v3.add(f3);
  r3.add(v3);
  
  fill(col1);
  noStroke();
  circle(r1.x,r1.y,4);
  fill(col2);
  noStroke();
  circle(r2.x,r2.y,4);
  fill(col3);
  noStroke();
  circle(r3.x,r3.y,4);
  
  
  
}
