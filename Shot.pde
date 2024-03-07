class Shot{
  //variables
 int x;
 int y;
 int d;
 int speed;
 
 //constructor
 Shot(int startX, int startY){ 
 x = startX;
 y = startY;
 d = 13;
 speed = 17;
 }
 //Visuel object function
 void display(){
  circle(x,y,d); 
 }
 //Movement function
 void move(){
 y -= speed;
 }
}
