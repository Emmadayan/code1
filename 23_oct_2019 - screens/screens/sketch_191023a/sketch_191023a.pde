int screen;

void setup(){
  size(400, 400);
}

void draw(){
 switch(screen){
   case 0: 
     startScreen();
   break;
   case 1:
     gameScreen();
   break;  
   case 2:
     endScreen();
   break;
 }; 
 //startScreen();

}

void mousePressed(){
  if (screen == 0){
  if (dist(mouseX, mouseY, width/2, height/2)<25){
    println("button clicked");
    screen = 1;
    }
  }
    
  if (screen == 2){
  if (dist(mouseX, mouseY, width/2, height/2)<25){
    println("button clicked");
    screen = 0;
    }
  }
}

void startScreen(){
  background(0);
  textSize(35);
  fill(255);
  text("welcome to my game. Press green button", 25, height/6, width-25, 100);
  
  fill(0, 200, 0);
  ellipse(width/2, height/2, 50, 50);
  
}

void keyPressed(){
  if (screen == 1){
    screen = 2;
  }
}

void gameScreen(){
  background (255, 0, 0);
  fill(255);
  text("Press any key", 25, height/6, width-25, 100);
}

void endScreen(){
  background(0, 0, 200);
  textSize(30);
  fill(255);
  text("game over. Press button to start again", 25, height/6, width-25, 100);
  
  fill(0, 200, 0);
  ellipse(width/2, height/2, 50, 50);
  
}
