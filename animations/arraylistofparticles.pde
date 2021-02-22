ArrayList<particle> particles;



void setup(){
  size(700,700);
particles=new ArrayList<particle>();
//for (int k=0;k<50;k++){
//particles.add(new particle(10));
//}
}
void draw(){
  background(0);
  particles.add(new particle(10));
  for(particle p:particles){
   p.force();
 p.move();
 p.display();
   
 }
//for (int k=particles.size()-1;k>=0;k--){
//  particle p =particles.get(k);
//  if (p.life<=0){
//    particles.remove(k);
    
//  }
}
  
//}
  
//}


 
 // for (int k=0;k<5;k++){
 // particle p =particles.get(k);
 //p.force();
 //p.move();
 //p.display();
 // }
 //   for (int k=0;k<50;k++){
 //particles.get(k).force();
 //particles.get(k).move();
 //particles.get(k).display();
 // }
  

  
  
  


class particle{
  float dai;
  PVector r;
  PVector vel;
  PVector acc;
  color col;
  float gravity =0.2;
  float life=255;
  PVector inipos=new PVector(300,300);
  PVector inivel=new PVector(random(-8,8),random(-8,8));
  particle(float temp){
   vel =inivel.get();
   acc= new PVector (0,0);
  col=color(random(255),random(255),random(255));
    r= inipos.get();
    dai=temp;
  }
 void force(){
    PVector f=new PVector(0,gravity);
    acc.add(f);
    
 }
  void move(){
    vel.add(acc);
    r.add(vel);
    acc.mult(0);
    life=life-4;
  }
  void display(){
    fill(255,0,0);
    //rectMode(CENTER);
    //ellipse(pos.x,pos.y,50,50);
    fill(col,life);
     noStroke();
    circle(r.x,r.y,dai);
    
  }
  
}


  
 
  
  
