int num=3;
float attractionconst=100;
particle[] gp= new particle[num];

void setup(){
 background(0);
  size(800,800);
 for(int k=0;k<num;k++){
 PVector p1loc=new PVector(random(width),random(height));
 PVector p1v=new PVector(random(-1,1),random(-1,1));
 float  mass=random(1,5);
 gp[k]=new particle(mass,5,p1loc,p1v);
 }
}
void draw(){
   
  for(int i=0;i<num;i++){
    
    for (int j=0;j<num;j++){
      if(j!=i){
         gp[i].force(gp[j]);
      }
      
    }
    
     
  gp[i].move();
  gp[i].display();
    
  }
  
  
  
  
}

class particle{
  float mass;
  PVector r;
  float dai;
  float gconst;
  PVector vel;
  PVector acc;
  color col ;
  
  particle(float temp1,float temp2,PVector temp3,PVector temp4){
    mass =temp1;
    dai =temp2;
    r=temp3;
    gconst =attractionconst;
    vel =temp4;
    acc=new PVector(0,0);
    col =color(random(0,255),random(0,255),random(0,255));
  }
  void force(particle p){
    PVector rd= PVector.sub(p.r,r);
    float d=rd.mag();
    PVector f=rd.normalize();
    f.mult(gconst*p.mass/(d*d));
    acc.add(f);
  }
  void move(){
    vel.add(acc);
    r.add(vel);
   acc.mult(0);
 }
  
  void display(){
    fill(col);
    noStroke();
    circle(r.x,r.y,dai);
    
  }
  
 
}
  
  
  
  
  
  
 
  
  
  
  


  
  
