class Particle {
  int size = 20;
  PVector position;
  PVector velocity;
  PVector gravity;
  color c;
  
  Particle(){
    position = new PVector(mouseX, mouseY);
    velocity = new PVector(random(-4, 4), random(-2,2));
    gravity = new PVector (0, .1);
    c = color(random(0,100), random(100, 244), random(100, 200));
  }
  
  void display(){
    noStroke();
    fill(c);
    rect(position.x, position.y, size, size);
  }
  
  void update(){
    position.add(velocity);
    velocity.add(gravity);
  }
  
  void bottomBounce(){
    velocity.y = -velocity.y;
  }
  
  void sideBounce(){
    velocity.x = -velocity.x;
  }
  
  //draw particle 
  //update position
  //bounce
  
}
