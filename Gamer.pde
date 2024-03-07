class Gamer{
  // variables
  int x;
  int y;
  int w;
  int h;
  boolean isMovingLeft;
  boolean isMovingRight;
  boolean isJumping;
  boolean isFalling;
  int speed;
  int jumpSpeed;
  int jumpHeight;
  int jumpPeak;
  int top;
  int bottom;
  int left;
  int right;
  
  //Constructor
  Gamer(int startingX, int startingY, int startingW, int startingH){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    isMovingLeft = false;
    isMovingRight = false;
    isJumping = false;
    isFalling = false;
    speed = 5;
    jumpSpeed = 10;
    jumpHeight = 150;
    jumpPeak = y - jumpHeight;
    left = x - w/2;
    right = x + w/2;
    top = y - h/2;
    bottom = y + h/2;
  }
  //Function for player model
  void render(){
    rectMode(CENTER);
    fill(255); // Set color to white
    rect(x, y, w, h);
  }
  //Function for movement
  void move(){
    if (isMovingLeft){
      x -= speed;
    }
    if (isMovingRight){
      x += speed;
    }
    //Hitbox variables for updated hitbox
    left = x - w/2;
    right = x + w/2;
    top = y - h/2;
    bottom = y + h/2;
  }
  //Function for jumping(all 4 together make the jump)
  void jump(){
    if (isJumping == true){
    y -= jumpSpeed;
    }
  }
  void fall(){
   if (isFalling == true){
     y += jumpSpeed;
   }
  }
  void peakJump(){
    if (y <= jumpPeak){
      isJumping = false;
      isFalling = true;
    }
  }
  void land(){
    if (y >= height - h/2){
      isFalling = false;
      y = height - h/2;
  }
  }
}
