
int num=5;
walker[] w=new walker[num];

void setup(){
 size(600,600);
 background(255);
 for (int k=0;k<num;k++){
w[k]=new walker(random(width),random(height),2,2);
  
}

}
void draw(){
   for (int k=0;k<num;k++){
  w[k].display();
  w[k].move();
  w[k].bound();
   }
  
}
class walker{
 float x;
 float y;
 float dai;
 float speed;
 float repx;
  float repy;
 walker(float temp1,float temp2,float temp3,float temp4){
  x=temp1;
  y=temp2;
  repx=temp1;
  repy=temp2;
  
  dai=temp3;
  speed=temp4;
 }
  
  void move(){
   int choose=int(random(4));
   if (choose==0){
     x=x+speed;
   }
   else if(choose==1){
     
    x=x-speed; 
   }
   else if(choose==2){
    y=y+speed; 
   }
   else{
     y=y-speed;
   }
  }
  
    void display(){
     noStroke();
     fill(0);
      circle(x,y,dai);
     
      
    } 
    
    void bound(){
     if(x<0 || x>width){
      x=repx;
     }
     if(y<0 || y>height){
       y=repy;
     }
      
      
    }
  
}
  
  
