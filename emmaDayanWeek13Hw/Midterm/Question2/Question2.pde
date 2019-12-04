float d = 100;
float incr = 5;

boolean shrink; 

void setup() {
  size(600, 600);
}

void draw() {
  background(150);
  ellipse(width/2, height/2, d, d);

  d += incr; 
  
  if(d >= width && d >= height){
    shrink = true;
    incr--;
  }
  if( d <= 0){
    shrink = false;
    incr++;
  }

}
