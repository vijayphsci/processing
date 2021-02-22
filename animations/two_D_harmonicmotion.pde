float x=0;
float y=0;
float amp1=300;
float amp2=200;
float f1=0.03;
float f2=0.05;
float th1=0;
float th2=0;
color col=color(random(255),random(255),random(255));
  void setup(){
     background(0);
    size(1000,1000);
  }
  
  void draw(){
  
   
  x=amp1*sin(th1);
  y=amp1*cos(th2);
  th1=th1+f1;
  th2=th2+f2;
 translate(width/2,height/2);
 fill(col);
  circle(x,y,5);
 //circle(x,y,50);
 //stroke(255,0,0);
 //strokeWeight(3);
 //line(0,0,x,y);
  }

 
 
  
  
