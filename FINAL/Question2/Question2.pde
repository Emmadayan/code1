int xPos, yPos; 
int size = 100; 
boolean circleClicked = false; 
float d; 

void setup(){
size(600, 600); 
xPos = width/2; 
yPos = height/2;
noStroke(); 
}

void draw(){

//calculate dist between the mouse and the center of the circle 

//if the mouse is inside the circle, fill the circle black 
//otherwise, fill the circle white

if (dist(xPos, yPos, mouseX, mouseY)<size/2) {
    fill(0);
  }else {
    fill(255);
  }

if(circleClicked){
background(0); 
}else{
background(255);
}

println(circleClicked); 
ellipse(xPos, yPos, size, size); 
}

void mousePressed(){
// toggle the boolean from true / false if the mouse is inside of the circle
  if (dist(mouseX, mouseY, xPos, yPos) < size/2){
    circleClicked = !circleClicked;
  }
}
