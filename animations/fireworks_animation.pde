int num=50;
particle[] p=new particle[num];

void setup(){
  size(700,700);
  for (int k=0;k<num;k++){
  p[k]=new particle();
  }
}
void draw(){
  background(0);
  for (int k=0;k<num;k++){
  p[k].force();
  p[k].move();
  p[k].display();
  p[k].repeat();
  }

  
}

class particle{
  
  PVector r;
  PVector vel;
  PVector acc;
  color col;
  float gravity =0.2;
  float life=255;
  PVector inipos=new PVector(300,300);
  PVector inivel=new PVector(random(-8,8),random(-8,8));
  particle(){
   vel =inivel.get();
   acc= new PVector (0,0);
  col=color(random(255),random(255),random(255));
    r= inipos.get();
  }
 void force(){
    PVector f=new PVector(0,gravity);
    acc.add(f);
    
 }
  void move(){
    vel.add(acc);
    r.add(vel);
    acc.mult(0);
    life=life-3;
  }
  void display(){
    fill(255,0,0);
    //rectMode(CENTER);
    //ellipse(pos.x,pos.y,50,50);
    fill(col,life);
     noStroke();
    circle(r.x,r.y,10);

  }
  
  void repeat(){
  if (life<=0){
    life=255;
     r= inipos.get();
    vel =inivel.get();
  
}
  }
  
}
