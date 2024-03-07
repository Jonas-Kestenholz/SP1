//Declaration of vars
Gamer g1; 
ArrayList<Shot> shotList;
Platform p1;
Platform p2;
ArrayList<Platform> platformList;

void setup(){
  size(1000, 600);  
//Initialization of vars  
  g1 = new Gamer(width/2, height-20, 40, 40);
  shotList = new ArrayList<Shot>();
  p1 = new Platform(800,475);
  p2 = new Platform(200,475);
  platformList = new ArrayList<Platform>();
  platformList.add(p1);
  platformList.add(p2);
}

void draw(){
  background(50);
  //Calling functions
  g1.render();
  g1.move();
  g1.jump();
  g1.fall();
  g1.peakJump();
  g1.land();
  p1.render();
  
  p1.hitbox(g1);
  for (Shot shot : shotList){
    shot.display();
    shot.move();
}
  for (Platform platform : platformList){
  platform.render();
  platform.hitbox(g1);
  }
}

void keyPressed(){
  //Calling and changing booleans to move the player
  if (key == 'a'){
    g1.isMovingLeft = true;
  }
  if (key == 'd'){
    g1.isMovingRight = true;
  }
  if (key == 'w' && (g1.isJumping == false && g1.isFalling == false)){ //'W' is coded so that a jump should not bug out player model
    g1.isJumping = true;
    g1.jumpPeak = g1.y - g1.jumpHeight;
  }
  if (key == ' '){//Will trigger shooting
    shotList.add(new Shot(g1.x,g1.y));
  }
}
//Releasing the key will make the player model stop, and not continue movement
void keyReleased(){
  if (key == 'a'){
    g1.isMovingLeft = false;
  }
  if (key == 'd'){
    g1.isMovingRight = false;
  }
}
