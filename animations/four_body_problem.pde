int len1=1000;
int len2=1000;
int l=300;
float theta=radians(150);
float vel1=0.0;
float vel2=2.0;
float vel3=0.0;

float st=sin(theta);
float ct=cos(theta);

 PVector r1=new PVector(len1/2-l,len2/2-l);
 PVector r2=new PVector(len1/2+l,len2/2-l);
 PVector r3=new PVector(len1/2+l,len2/2+l);
 PVector r4=new PVector(len1/2-l,len2/2+l);
 PVector v1=new PVector(vel1*ct,-vel1*st);
 PVector v2= new PVector(vel2*ct,-vel2*st);
 PVector v3=new PVector(vel3*ct,-vel3*st); 
 PVector v4=new PVector(-vel1*ct-vel2*ct-vel3*ct,vel1*st+vel2*st+vel2*st); 
 float m1=1;
 float m2=1;
 float m3=1;
 float m4=1;
 color col1=color(random(0,255),random(0,255),random(0,255));
  color col2=color(random(0,255),random(0,255),random(0,255));
  color col3=color(random(0,255),random(0,255),random(0,255));
  color col4=color(random(0,255),random(0,255),random(0,255));
void setup(){
    
size(1000,1000);
  //frameRate(100);
  //background(0);
}
void draw(){
background(0);
 float  gconst=1500;
  PVector R1= PVector.sub(r2,r1);
  PVector R2=PVector.sub(r3,r1);
  PVector R3=PVector.sub(r3,r2);
  PVector R4= PVector.sub(r4,r1);
  PVector R5=PVector.sub(r4,r2);
  PVector R6=PVector.sub(r4,r3);
  
 float d1=R1.mag();
 float d2=R2.mag();
 float d3=R3.mag();
 float d4=R4.mag();
 float d5=R5.mag();
 float d6=R6.mag();
 
 
 PVector f12=R1.normalize().get();
 f12.mult(gconst*m2/(d1*d1));
 PVector f13=R2.normalize().get();
 f13.mult(gconst*m3/(d2*d2));
 PVector f14=R4.normalize().get();
 f14.mult(gconst*m4/(d4*d4));
 PVector f1=PVector.add(f12,f13);
 f1.add(f14);



 PVector f21=R1.normalize().get();
 f21.mult(-gconst*m1/(d1*d1));
 PVector f23=R3.normalize().get();
 f23.mult(gconst*m3/(d3*d3));
 PVector f24=R5.normalize().get();
 f24.mult(gconst*m4/(d5*d5));
 PVector f2=PVector.add(f21,f23);
 f2.add(f24);



 PVector f31=R2.normalize().get();
 f31.mult(-gconst*m1/(d2*d2));
 PVector f32=R3.normalize().get();
 f32.mult(-gconst*m2/(d3*d3)); 
 PVector f34=R6.normalize().get();
 f34.mult(gconst*m4/(d6*d6));
 PVector f3=PVector.add(f31,f32);
 f3.add(f34);



 PVector f41=R4.normalize().get();
 f41.mult(-gconst*m1/(d4*d4));
 PVector f42=R5.normalize().get();
 f42.mult(-gconst*m2/(d5*d5));
 PVector f43=R6.normalize().get();
 f43.mult(-gconst*m3/(d6*d6));
 PVector f4=PVector.add(f41,f42);
 f4.add(f43);
 
 v1.add(f1);
 r1.add(v1);
 
 v2.add(f2);
 r2.add(v2);
  
  v3.add(f3);
  r3.add(v3);
  
  v4.add(f4);
  r4.add(v4);
  
  fill(col1);
  noStroke();
  circle(r1.x,r1.y,20);
  fill(col2);
  noStroke();
  circle(r2.x,r2.y,20);
  fill(col3);
  noStroke();
  circle(r3.x,r3.y,20);
   fill(col4);
  noStroke();
  circle(r4.x,r4.y,20);
  
}
