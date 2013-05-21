

// Variables for Canvas
int cWidth = 400;
int cHeight = 400;

//
int bRed = 10; 
int bGreen = 10;
int bBlue = 255;

// Variables for Ball
int posX = (cWidth/2);
int posY = (cHeight/2);
int ballSizeX = 40;
int ballSizeY = 40;
int bStroke = 4;

//Colors of ball stroke n fill
int baR = 255; 
int baG = 10;
int baB = 10;

int baStrokeR = 10;
int baStrokeG = 255;
int baStrokeB = 10;

// Movement of Ball
int speed = 3;
int direction = 1;

int speedY = 2;
int directionY = 1;

// Variables for palet
int posXpa;
int posYpa = (cHeight-20);
int pSizeX = 60;
int pSizeY = 10;


//Colors of palet fill
int palet = 100; 

void setup() {
  size(cWidth,cHeight);
  background(bRed,bGreen,bBlue);
  noCursor();
  strokeWeight(bStroke);
  stroke(baStrokeR,baStrokeG,baStrokeB);
 //initialPos
  ellipse(posX,posY,ballSizeX,ballSizeY);
  rectMode(CENTER);
  
}

void draw() {
 //refreshing the back
  background(0);
  strokeWeight(bStroke);
  fill(255);
  stroke(baStrokeR,baStrokeG,baStrokeB);
  //BAL////////////////////
  //moving ball
  posX = posX + (speed * direction);
  posY = posY + (speedY * directionY);
  //making it bounce
  if (posX > width-((ballSizeX/2)+2)  || posX < ((ballSizeX/2)+2)) {
    direction *= -1;
  }
  if (posX > (mouseX-22) && (posX < mouseX+22) && posY > (posYpa-25) || posY < ((ballSizeY/2)+2)){
    directionY *= -1;
    println (posX);
  } 

  //draw ball
    ellipse(posX,posY,ballSizeX,ballSizeY);   
    
  //PAL/////////////////////// 
    fill(255,255,0);
    noStroke();
    rect(mouseX, posYpa, 50, pSizeY);  
}


//void setup() {
  
  
 // size(cWidth,cHeight);
  //background(bRed,bGreen,bBlue);
  //line(posXpa, posYpa, paletSizeX, paletSizeY);
  
//}


/*i is integer starts 0, i < canvas width - radius of ball, i = i +1   
  for (int i = 22; i < (width-22); i++) {
*/
