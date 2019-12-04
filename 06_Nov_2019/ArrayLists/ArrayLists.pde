ArrayList <Bubble> bubbles;

void setup(){
  size(600, 600);
  
  bubbles = new ArrayList<Bubble>();
  for (int i = 0; i < 20; i++){
    bubbles.add (new Bubble());
  }
 
}


void draw(){
  
  for (int i = 0; i < 20; i++){
    Bubble b = bubbles.get(i);
    b.drawBubble();
  }
  

}
