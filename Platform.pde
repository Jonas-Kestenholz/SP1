class Platform{
//variables 
  int x;
  int y;
  int w;
  int h;
//hitbox variables  
  int top;
  int bottom;
  int left;
  int right;
  
  Platform(int startingX, int startingY){
  rectMode(CENTER);
  x = startingX;
  y = startingY;
  w = 125;
  h = 10;
  left = x - w/2;
  right = x + w/2;
  top = y - h/2;
  bottom = y + h/2;
  }
  
  //Render the object
  void render(){
  rect(x,y,w,h);
  }
  
  //Hitbox to check for collision between objects
  void hitbox(Gamer gamer){
  if (left < gamer.right &&
      right > gamer.left &&
      top < gamer.bottom &&
      bottom > gamer.top){
        
        gamer.isFalling = false;
        gamer.y = y - h/2 - gamer.h/2;
  } 
    
}

}
