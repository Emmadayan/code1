class Ship{
  //data
  color c;
  float xPos;
  float yPos;
  float xSpeed;
  
  //constructor
    Ship(){
      c = color(random(0,100), random(100, 244), random(100, 200));
      xPos=random(0, width);
      yPos=random(0, height);
      xSpeed=random(1, 4);
    }  
  
    void drawShip(){
      noStroke();
      fill(c, 100);
      ellipse(xPos, yPos, 50, 20);
      ellipse(xPos, yPos-10, 20, 20);
    }
  
    void move(){
      xPos = xPos + xSpeed;
      if (xPos >= width+20){
        xPos = -20;
      }
    }
}
