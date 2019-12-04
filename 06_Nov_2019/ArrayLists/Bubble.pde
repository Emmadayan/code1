class Bubble {

  float x;
  float y;
  float d;
  float d1;
  color c;
  
  Bubble(){
    x = random(width);
    y = random(height);
    d = 1;
    d1 = 1;
    c = int (random(150, 255));
  }
  
  void drawBubble(){
    noStroke();
    fill(c);
    ellipse(x, y, 20, 20);
  }
  
  void move(){
    x = x + d;
    y = y + d1;
  }
  
  void boundaries(){
    if (x > width-10){
      d = -1;
    }else if (x<0){
      d = 1;
    }
    
    if (y > height-10){
      d1 = -1;
    }else if (y < 0){
      d1 = 1;
    }
  }

}
