void setup()  {
 size (400,400);
 background(0);
 noCursor();

}

void draw() {

 background(random(0,255),random(0,255),random(0,255), 10);
 frameRate(10); 
 fill(255,255,255,50); 
 stroke(0,255,0);
 ellipse (mouseX,mouseY, 50,50);

}
