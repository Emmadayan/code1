if (condition){
    action;
}else (condition){
    otherAction;
}


if (condition){
    action;
}else if (condition2){
    action2;
}else if (condition3){
    action3;
}

//transformations ie: moving the canvas 
pushMatrix(); = stores coordinate system
popMatrix(); = resets the coordinate system
translate(); = moves coordinate system
scale(); = changes size of coordinate system
rotate(); = rotates the coordinate system

//for loops
for (int i = 0, i < 5, i++) {
    print (i)
}
//prints: 0, 1, 2, 3, 4

//while loops
int i = 0;
while (i < 80) {
    line(30, i, 80, 1)
    i = i + 5;
}

//arrays 
//syntax for processing:
int number [] = {1, 2, 3, 4, 5, 6};

//set size for the array
//when defining an array, if you don't assign the indexes manually, you need to then tell the computer how many 'slots' will be put inside the array
String []words;
words = new String[3]; 
//that gives it three spots

//takwes the decimal value and rounds down instead of up
floor(random(25, 100))


//Procedural Ptogramming 
// - Problem broken down in terms of a kind of to do list in order for the task to execute

//Object Oriented Programming (OOP)
//Think aobut objects and what functions/methods the objects can do 
//object based things. Take the objects and then define functions and characteristics that belong to that object
//Data plays the main role

//Why OOP?
//1. Reusability of code
//2. Modularity - easy comprehension
//Easy to maintain & modify existing code
//Data hiding for code security

//classes and objects 
//class structure that contains a bunch of different actions for an object 
//class = building , instance = empire state 

//defining a class
//1. Name
//2. Data
//3. Methods
//4. Constructor

class superHero {
    String realName;
    String power;
    Color suit;

    void protectPeople(){-----}
    int fightBadGuys(){-----}
    void disguise(){-----}

superHero {
    String = "Ted"
    String = "invisibility"
    Color = "blue";
    }
}


superHero superman;
superHero flash;

superman = new superHero ("Clark Kent", "superhuman strength", "blue");
flash = new superHero("Barry Allen", "fastest", "red");

superman.protectPeople();
flash.fightBadGuys();



//November 20
//Vectors
//A quantity/object that has both magnitude (a length and direction)

//Vector math
Vector a = (3,4) Vector b = (4,1)
a + b = (3,4) + (4,1) = (7, 5)
//vectors will have an x and y component and the speeds will have an x and y component as well

//Declaring a vector
PVector v1, v2;
//Setting the x and y components for the vectors 
void setup(){
    v1 = new PVector(40,20);
    v2 = new PVector(25,50);
}
//cn call x and y components by using vectorName.x and vectorName.y
void draw(){
    ellipse(v1.x, v1.y, 12, 12);
    ellipse(v2.x, v1.y, 12, 12);
    //add vectors using
    v2.add(v1);
    ellipse (v2.x, v2.y, 24, 24);
}

//add velocity vector to position
//we cam use acceleration to change the velocity
//velocity is how fast position is changing
//acceleration is hoe quickly the velocity is changing
//Gravity is a form of acceleration

sin, cos
//if you want something to orbit something else you set the thing to the sin or cos of an angle