int num=10;
bouncingball[] b=new bouncingball[num];


void setup(){
  size(600,600);
  for (int k=0;k<num;k++){
  b[k]= new bouncingball(random(0,width),random(0,height),random(0,20),random(0,255),random(0,255),random(0,255),random(0,15),random(0,15));
  }
  
}

void draw(){
  background(0);
  for (int k=0;k<num;k++){
  b[k].display();
  b[k].turn();
  b[k].inc();
  }
   
  
  
}



class bouncingball{
  float xini;
  float yini;
  float dai;
  float col1;
  float col2;
  float col3;
  float vx;
  float vy;
  
  bouncingball(float temp1,float temp2,float temp3,float temp4,float temp5,float temp6,float temp7,float temp8){
    xini =temp1;
    yini=temp2;
    dai= temp3;
    col1=temp4;
    col2=temp5;
    col3=temp6;
    vx=temp7;
    vy=temp8;
 
  }
  
  
  
  void turn(){
  if (xini<0 || xini>width){
    vx=-vx;
  }
  if (yini<0 || yini>height){
    vy=-vy;
    
  }
  }
  void inc(){
    xini=xini+vx;
    yini=yini+vy;
  }
  
  
  void display(){
    fill(col1,col2,col3);
    circle(xini,yini,dai);
  
  }
  
  
}
