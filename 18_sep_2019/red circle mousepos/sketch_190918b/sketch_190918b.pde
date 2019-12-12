int xPos, yPos;
int size = 100;
boolean circleClicked = false;
float d;

void setup(){
  //canvas size
  size(600, 600);
  //this is the size and place of the circle cos its not moving 
  xPos = width/2;
  yPos = height/2;
}

void draw(){
  d = dist(mouseX, mouseY, xPos, yPos);
  if(d < size/2){
    //println ("inside circle");
      fill (0);
  } else {
      fill (255);
  }
   
  if (circleClicked){
     background(0, 255, 0);
 }else {
     background(255, 0, 0);
 }
   //println(circleClicked);
   
   // this is where we draw the cirlce:
  ellipse(xPos, yPos, size, size);   
  
  //println(d);

}

void mousePressed (){
  if (d < size/2){
    circleClicked = !circleClicked;
  } 
  //else {
  //  circleClicked = false;
  //}
}
