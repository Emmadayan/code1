int size = 50; 
float xPos = size/2, yPos; 
int xDirection = 1; 
float theta; 
float ampl; 
void setup(){
size(800, 600); 
}
void draw(){
background(0); 

theta += .05; 

if(xPos >= width || xPos <= 2){
  xDirection = -xDirection;
}

xPos += xDirection; 
//use the map function for ampl
ampl = map(xPos, 0, xPos, 0, xPos/3);
yPos = sin(theta) * ampl+height/2;

fill(255);
ellipse(xPos, yPos, size, size);
}
