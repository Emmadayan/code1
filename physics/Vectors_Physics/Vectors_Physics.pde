PVector position;
PVector velocity;
PVector acceleration;
//PVector oVelocity;
int size = 25;

void setup(){
  size(600,600);
  position = new PVector (width/2, height/2);
  velocity = new PVector(random(-2, 2), random(-3, 3));
  acceleration = new PVector(.1, .1);
  //oVelocity = velocity;
}

void draw(){
  background(255);
  position.add(velocity);
  velocity.add(acceleration);
  ellipse (position.x, position.y, size, size);
  
  if(position.x > width - size/2 || position.x < 0 - size/2){
    velocity.x = -velocity.x;
    acceleration.x = -acceleration.x;
    //somehow reset the velocity so that it doesn't get infinitely faster
  }
  if(position.y > height - size/2 || position.y < 0 - size/2){
    velocity.y = -velocity.y;
    acceleration.y = -acceleration.y;
  }
}
