//int []numbers={1, 2, 3, 4, 5, 6};
//String []words;

//void setup(){
//  println(numbers[2]);
//  words = new String[4];
  
//  words[0] = "Banana";
//  words[1] = "Milk";
//  words[2] = "Strawberries";
//  words[3] = "Berries";
  
//  for (int i=0; i<4; i++){
//    println(words[i]);
//  }
//}

float []randomNums = new float[100];
String []sentence = new String [9];
int counter=0;

void setup(){
  size (500, 500);
  for (int i=0; i<100; i++){
    randomNums[i]=random(0, 100);
    println(randomNums[i]);
  }
  sentence[0]="the ";
  sentence[1]="rain ";
  sentence[2]="in ";
  sentence[3]="Spain ";
  sentence[4]="falls ";
  sentence[5]="mainly ";
  sentence[6]="in ";
  sentence[7]="the ";
  sentence[8]="plane";
  
  for (int i=0; i<sentence.length;i++){
    if (sentence[i]=="the "){
      counter++;
    }
    println(counter);
  }
}

void draw(){
  for (int i=0; i<randomNums.length; i++){
    rect(randomNums[i], randomNums[i], randomNums[i], randomNums[i]);
  }
 
 
  //for (int i=0; i<sentence.length; i++){
  //  if (i=){
  //  println(counter);}
  //}
}
