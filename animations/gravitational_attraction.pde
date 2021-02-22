particle p;
boolean going=false;
PVector pos = new PVector(100,200);
void setup(){
  size(1000,1000);

  p=new particle(pos);
}

void draw(){
  background(0);
  if(!going){
  pos.x=mouseX;
  pos.y=mouseY;
  }
 
  if (going){
  p.force();
  p.move();
  p.turn();
   

  }
 p.display();

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
    dai =random(20,50);
    r=temp1;
    fixmass=1000;
    fixdai=100;
    fixr=new PVector(width/2,height/2);
    gconst=1;
     col=color(random(0,255),random(0,255),random(0,255));
    acc=new PVector(0,0);
    vel=new PVector(0,-1);
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
     circle(r.x,r.y,dai);
     fill(255);
     circle(fixr.x,fixr.y,fixdai);
  
  }
  
  
}

void mousePressed(){
  going=!going;
}
