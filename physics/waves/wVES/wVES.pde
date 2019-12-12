PVector position;
float theta;
int orbitRadius = 100;

void setup() {
  size (600, 600);
  rectMode(CENTER);
  position = new PVector(width/2, height/2);
}


int xSpeed = 1;
void draw() {
  //background(255);
  theta += .05;
  //or theta = frameCount;
  //position.x = cos(theta)*orbitRadius+mouseX;
  position.y = sin(theta)*orbitRadius+height/2;

  //position.x ++;
  
  
  position.x += xSpeed;
  if (position.x >= width || position.x <= 0) {
    xSpeed = -xSpeed;
  }
  
  rect(position.x, position.y, 25, 25);
}
