int number = 200;
int []size = new int [number];

float []xPos = new float[number];
float []yPos = new float[number];

float []xSpeed = new float[number];
float []ySpeed = new float[number];

color []colors = new color[number];

int []opacity = new int [number];
boolean isClicked=true;

void setup(){
  size(800, 800);
  
  for (int i=0; i < number; i++){
    size[i] = int(random(25, 100));
    xPos[i] = random(size[i]/2, width-size[i]/2);
    yPos[i] = random(size[i]/2, height-size[i]/2);
    xSpeed[i] = random(-2, 5);
    ySpeed[i] = random(-2, 5);
    opacity[i] = 255;
    colors[i] = color(random(50, 255), 20, random(50, 255));
    isClicked[i] = false;  }
  
}

void draw(){
  background(255);
  for (int i=0; i<number; i++){
    fill(colors[i], opacity[i]);
    noStroke();
    xPos[i]+=xSpeed[i];
    yPos[i]+=ySpeed[i];
    
     if(isClicked[i]){
       xPos[i]=xPos[i];
       yPos[i]=yPos[i];
     }else{
       xPos[i] = xPos[i] + xSpeed[i];
       yPos[i] = yPos[i] + ySpeed[i];
     }
    
    if (xPos[i] <= size[i]/2 || xPos[i] >= width-size[i]/2){
      xSpeed[i] = -xSpeed[i];
    }
    
    if (yPos[i] <= size[i]/2 || yPos[i] >= height-size[i]/2){
      ySpeed[i] = -ySpeed[i];
    }
    
    float d = dist(mouseX, mouseY, xPos[i], yPos[i]);
    
     if (d < size[i]/2){
       opacity[i] = 0;
     }
     
     if (keyPressed){
       opacity[i]=255;
     }
     
    
    ellipse(xPos[i], yPos[i], size[i], size[i]);
  }
}

void mousePressed(){
  for (int i = 0; i < number; i++){
    float d;
    d= dist(mouseX, mouseY, xPos[i], yPos[i]);
    if(d < size[i]/2){
      isClicked
    }
  }  
}
