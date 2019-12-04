class Player {
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;
  //to be able to access the size of ship re collision
  int size;
  
  Player(){
    xPos = width/2; 
    yPos = height/2;
    
    size = 15;
  }
  
  void move(){
    xPos = xPos + xSpeed;
    yPos = yPos + ySpeed;
    
    if (keyPressed){
       if (keyCode == UP){
         ySpeed = -5;
      }
      if (keyCode == DOWN){
        ySpeed = 5;
        }
      if (keyCode == RIGHT){
        xSpeed = 5;
        }
      if (keyCode == LEFT){
        xSpeed = -5;
        }
    }else {
      xSpeed = 0;
      ySpeed = 0;
    } 
    
  }
  
  //void boundaries(){
  //  if(xPos > width + 20){
  //    xPos = -20;
  //  }
  //  if(xPos < width - 20){
  //    xPos = +20;
  //  }
  //}
  
  void drawShip(){
     noStroke();
     ellipse(xPos, yPos, size, size);
  }
}
