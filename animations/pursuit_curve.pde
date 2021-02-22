ball b ;

void setup(){
b=new ball();
 size(2000,1800); 
background(0);
 
 
}


void draw(){
 
b.display();
b.turn();
b.update();



}
class ball{
PVector location;
PVector velocity;
PVector acceleration;
PVector mouse;
  
ball(){
  location =new PVector(width/2,height/2);
  //new PVector(0.01,0);

  velocity=new PVector(0,0);

}
void update(){
  mouse=new PVector(mouseX,mouseY);
  mouse.sub(location);
  acceleration=mouse.setMag(0.1);
  velocity.add(acceleration);
  location.add(velocity);
  velocity.limit(4);
}
void turn(){
if (location.x>width){
  location.x=0;
}
if (location.x<0){
  location.x=width;
}
if (location.y>height){
  location.y=0;
}
if (location.y<0){
  location.y=height;
}


}

void display(){
  fill(255,0,0);
  circle(location.x,location.y,10);
  
}
 
}
