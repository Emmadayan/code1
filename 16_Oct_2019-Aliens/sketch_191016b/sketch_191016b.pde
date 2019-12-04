Ship myShip;
Ship []myShips; 
Player myPlayer;

void setup(){
  size(800, 600);
  myPlayer = new Player();
  myShip = new Ship();
  myShips= new Ship[20];
  //created the container above but not using a for loop we will fill the container with ships
  for (int i = 0; i<20; i++){
    myShips[i] = new Ship();
  }
}

void draw(){
 background(0);
 myShip.drawShip();
 myShip.move();
 
 
 fill(200, 100, 150);
 myPlayer.drawShip();
 myPlayer.move();
 //myPlayer.boundaries();
 
 for (int i = 0; i<20; i++){
   myShips[i].drawShip();
   myShips[i].move();
    if (dist(myPlayer.xPos, myPlayer.yPos, myShips[i].xPos, myShips[i].yPos)<25){
   println("collision");
 }
 }
}
