int circleWidth;
int circleHeight;
float centX;
float centY;

void setup() {
  size(800, 600);
  
  circleWidth = 100;
  circleHeight = 100;
  
  centX = width * 0.5;
  centY = height * 0.5;
  
}

void draw() {
  clear();
  background(256, 256, 256);
  ellipse(centX, centY, circleWidth, circleHeight);
}

void mouseMoved() {
  circleWidth = mouseX;
  circleHeight = mouseY;
}
