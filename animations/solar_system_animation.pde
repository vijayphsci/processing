int num=10;
particle[] p=new particle[num];


void setup(){
 
  size(1920,1080);
  for (int k=0;k<num;k++){
 PVector pos = new PVector(random(width),random(height));
  p[k]=new particle(pos);
  
  }
}

void draw(){
   background(0);

for (int k=0;k<num;k++){
  p[k].force();
  p[k].move();
  //p.turn();
 p[k].display();

}
}

class particle{
  float mass;
  float dai;
  PVector r;
  float gconst;
  PVector acc;
  PVector vel;
  color col;
  float fixmass;
  float fixdai;
  PVector fixr;
  
  
  particle(PVector temp1){
    mass =random(0,10);
    dai =random(10,30);
    r=temp1;
    fixmass=1000;
    fixdai=100;
    fixr=new PVector(width/2,height/2);
    gconst=1;
     col=color(random(0,255),random(0,255),random(0,255));
    acc=new PVector(0,0);
    vel=new PVector(random(-1,1),random(-1,1));
  }
  
  void force(){
    PVector diffr=PVector.sub(r,fixr);
   float dist=diffr.mag();
    PVector f=diffr.normalize();
    f.mult(-1*gconst*fixmass/(dist*dist));
    acc.add(f);
    
    
  }
  
 void move(){
    vel.add(acc);
    r.add(vel);
   // vel.limit(2);
    //acc.limit(2);
    acc.mult(0);
 }
  
  void turn(){
    if(r.x>width|| r.x<0){
      vel.x=-vel.x;
      
    }
  
  
  if (r.y>height|| r.y<0){
    vel.y=-vel.y;
  }

  }
  
  void display(){
    fill(col);
    noStroke();
     circle(r.x,r.y,dai);
     fill(random(0,255),random(0,255),random(0,255));
     noStroke();
   circle(fixr.x,fixr.y,fixdai);
  
  }
  
  
}
