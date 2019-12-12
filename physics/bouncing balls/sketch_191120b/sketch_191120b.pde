ArrayList <Particle> particles;

void setup(){
  size (600, 600);
  particles = new ArrayList <Particle>();
}

void draw(){
  background(255);
  for(int i = 0; i < particles.size(); i ++){
    Particle p = particles.get(i);
    p.display();
    p.update();
    
    //bottom bounce
    if (p.position.y > height - p.size/2){
      p.bottomBounce();
    }
    if (p.position.x > width - p.size/2 || p.position.x < p.size/2){
      p.sideBounce();
    }
    if (p.position.y < p.size/2){
      particles.remove(i);
    }
  }
}

void mousePressed(){
  particles.add (new Particle());
}
