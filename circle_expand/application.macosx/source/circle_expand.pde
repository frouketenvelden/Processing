int diam =10;
float centX,centY;

void setup(){
  size(500,300);
  frameRate (24);
  smooth();
  background(180);
  centX=width/2;
  centY=height/2;
  stroke(0);
  strokeWeight(1);
  fill(255,25);
}
void draw(){
  if (diam<=600){
    //background(180);
    
   // strokeWeight(0);
    //noFill();
    int tempdiam=diam;
    //while(tempdiam>10){
      ellipse(centX,centY, tempdiam,tempdiam);
      //tempdiam-=10;
    diam+=10;
  }
}
