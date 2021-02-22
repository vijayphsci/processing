boolean vijay=true ;
int num=10;
pendulum[] ball=new pendulum[num];
void setup(){
  size(1000,1000);
  for (int k=0;k<num;k++){
    
    ball[k]=new pendulum(random(width),random(height));
  }
  
}

void draw(){
  background(0);
  if (vijay){
  for (int k=0;k<num;k++){
  ball[k].move();
  ball[k].display();
  
  }
  }
  
}
  
class pendulum{
  float theta;
  float r;
  float dai;
  float xini;
  float yini;
  float gravity;
  color col1;
  color col2;
  float vel;
  float acc;
  pendulum(float temp1,float temp2){
    theta=radians(random(30,60));
    r=random(150,350);
    dai= random(30,60);
    gravity=1;
    col1=color(random(255),random(255),random(255));
    col2=color(random(255),random(255),random(255));
    xini=temp1;
    yini=temp2;
    acc=0;
    vel=0;
    
  }
  
  void move(){
   acc=gravity*sin(PI/2-theta)/r;
   vel=vel+acc;
   theta=theta+vel;
    
  }
  void display(){
    strokeWeight(5);
    stroke(col1);
    line(xini,yini,xini+r*cos(theta),yini+r*sin(theta));
    fill(col2);
    circle(xini+r*cos(theta),yini+r*sin(theta),dai);
  }
  
}
  
void mousePressed(){
 vijay=!vijay; 
}
  
  
  
  
  
  
  
