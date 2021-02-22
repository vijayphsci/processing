particle p;
void setup(){
  size(1500,700);
  p=new particle();
}

void draw(){
  background(0);
 p.force();
 p.move();
// p.turn();
 p.display();
   
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
  float len;
  float rlen;
  float rh;
  particle(){
    r= new PVector(50,650);
    vel=new PVector(1,-3);
    acc=new PVector(0,0);
    col=color(random(255),random(255),random(255));
    dai=100;
    theta=0;
    angvel=0.05;
    len=150;
    rlen=60;
    rh=90;
    
  }
  
 void move(){
   vel.add(acc);
   r.add(vel);
    l=new PVector(r.x+dai/2*cos(theta),r.y+dai/2*sin(theta));
    theta=theta+angvel;
    acc.mult(0);
  
 }
  void force(){
    PVector f1=new PVector(0.01,0);
    acc.add(f1);
    
  }
    
  void display(){
    fill(255,255,0);
    rect(r.x-rlen,r.y-rh,rlen+dai+len,rh);
    fill(col);
    noStroke();
    circle(r.x,r.y,dai);
    circle(r.x+len,r.y,dai);
    
    strokeWeight(5);
    stroke(255,0,0);
    line(r.x,r.y,l.x,l.y);
    line(len+r.x,r.y,len+l.x,l.y);
  }
  void turn(){
    if (r.x>width){
      r.x=0;
    }
    if (r.x<0){
      r.x=width;
    }
    if (r.y<0){
      r.y=height;
    }
    if (r.y>height){
      r.y=0;
    }
    
    
    
  }
  
  

  
}
