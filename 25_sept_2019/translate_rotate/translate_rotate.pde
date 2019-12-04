

void setup(){
  size (600, 600);
  rectMode(CENTER);
}

float theta = 0; 

void draw() {
  background (255);
  noFill();
  
  theta ++;
  
  pushMatrix();
    translate (width/2, width/2);
    rotate (radians(theta));
    scale (1.5);
    rect (0, 0, 100, 100);
  popMatrix();
  
 for (int i = 0; i<80; i++){
  pushMatrix();
    translate (width/2, height/2);
    rotate (radians(-theta+i));
    rect (0, 0, i*2, i*2);
    //println(i);
    
  popMatrix();
}
}
