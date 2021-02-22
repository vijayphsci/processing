//int num=50;
ArrayList <particle> p ;
void setup(){
  size(700,700);
p=new ArrayList<particle>();
frameRate(100);
}

void draw(){
  background(0);
p.add(new particle());
for (particle k :p){
  k.force();
  k.move();
  k.display();
  
}


}
class particle{
  
  PVector r;
  PVector vel;
  PVector acc;
  color col;
  float dai;
  float theta;
  float angvel;
  PVector l;
  float pdai;
  float life=255;
  particle(){
    
    vel=new PVector(random(0.5),random(-2,0));
    acc=new PVector(0,0);
    col=color(random(255),random(255),random(255));
    dai=50;
    //theta=0;
    //angvel=0.05;
    pdai=15;
    l=new PVector(200,500);
   r= new PVector(random(l.x-dai/2,l.x+dai/2),random(l.y-dai/2,l.y+dai/2));
  }
  
 void move(){
   vel.add(acc);
   r.add(vel);
   // l=new PVector(r.x+dai/2*cos(theta),r.y+dai/2*sin(theta));
   // theta=theta+angvel;
    acc.mult(0);
  life=life-2;
 }
  void force(){
    PVector f1=new PVector(0.05,0.01);
    acc.add(f1);
    
  }
    
  void display(){
    fill(100);
    noStroke();
    rectMode(CENTER);
    //rect(l.x,l.y,dai,dai);
    fill(226,88,34,life);
    circle(r.x,r.y,pdai);

  }
  

  
}
