ArrayList <Invader> invader;

void setup() {
  size(600, 600); 
  invader = new ArrayList <Invader>();
  noStroke(); 
  }

void draw() {
  background(255); 
  if (frameCount % 60 == 0) {
    invader.add(new Invader(random(0, 600), random(0, 600)));
  }
  for (int i = 0; i < invader.size(); i++) {
    Invader curr_invader = invader.get(i);
    curr_invader.display();
    curr_invader.move();
  }  
}
  
class Invader {
  int grid[][] = {{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0}, 
  {0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0}, 
  {0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0}, 
  {0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1}, 
  {1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1}, 
  {0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0}
  };
  int rows = 8, cols = 11; 
  int size = 10; 
  float xPos, yPos;
  
  Invader(float _xPos, float _yPos) {
    xPos = _xPos;
    yPos = _yPos;
  }
  
  void display() {
    for(int i = 0; i < rows; i++){
      for(int j = 0; j < cols; j++){
        if(grid [i][j] == 1){
          fill(0);
        } else {
          fill(255, 0);
        }
        rect((j*size) + xPos, (i * size)+ yPos, size, size);
      }
    }
  }
  
  void move() {
  float r = random(0, 1);
  if(r <= .25){
  xPos++;
  }
  //finish the logic here! 
  else {
    xPos--;
  }
  if (r >= .3){
    yPos++;
  } else {
    yPos--;
  }
 }
}
