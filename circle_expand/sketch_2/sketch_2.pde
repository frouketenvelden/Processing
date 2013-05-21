import codeanticode.syphon.*;

PGraphics canvas;
SyphonServer server;


int diam=10;
float centX, centY;

void setup(){
  size(800,600,P3D);
  canvas = createGraphics(800,600,P3D);
  
  //create Syphon server to send frames out
  server= new SyphonServer(this, "Processing Syphon");
  
  frameRate(25);
  smooth();
  background(180);
  centX=width/2;
  centY=height/2;
  stroke(0);
  strokeWeight(5);
  fill(255,50); 
} 
 
void draw(){
  canvas.beginDraw();
  if(diam<=600){
      //canvas. omdat je hem naar 'canvas' stuurt ipv de stage
      canvas.background(180);
      canvas.ellipse(centX,centY,diam,diam);
      diam+=10;
  
  }
  //begin and end draw voor als je offscreen gaat werken/gebruiken
  
  canvas.endDraw();
  //dat hij hem ook nog een keer (een image) maakt van je canvas
  image(canvas,0,0);
  //stuurt naar de server:
  server.sendImage(canvas);
  
  
}
  
