Bubble []bubbles = new Bubble[10];

void setup(){
  size (400, 400);
  
  for (int i = 0; i<10; i++){
     bubbles[i] = new Bubble();
  }
  
}

void draw(){
  
  for (int i = 0; i<10; i++){
     bubbles[i].drawBubble();
     bubbles[i].move();
     bubbles[i].boundaries();
  }  
  
  
}
