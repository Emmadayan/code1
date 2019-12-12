float xPos, yPos; 
float r, g, b; 

void setup() {
  size(600, 600); 
  smooth();  
  noStroke();
}

void draw() {

  //draws background
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      float r = map(i, width, 255, 0, 175);
      float g = map(j, height, 170, 0, 105);
      stroke(r, g, 175);
      point(i, j);
    }
  }
  xPos = map(second(), 0, 60, 0, width);
  
  yPos = sin(radians(second()))*height; 
  
  
  ellipse(xPos, yPos, 100, 100);
}
