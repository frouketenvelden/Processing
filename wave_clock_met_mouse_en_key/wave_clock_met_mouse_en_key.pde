//================================= global vars
 
int _num = 10;   
float _angnoise, _radiusnoise;
float _xnoise, _ynoise;
float _angle = -PI/2;
float _radius = 100;
float _strokeCol = 254;
int _strokeChange = -1;
 
 
//================================= init
 
void setup() {
  size(800, 600);
  smooth();
  background(0);
  frameRate(30);
   

   
  _angnoise = random(10);
  _radiusnoise = random(10);
  _xnoise = random(10);
  _ynoise = random(10);
 
  
}
 
void clearBackground() {
  background(0);
}
 
//================================= frame loop


void draw() {
   
  _radiusnoise += 0.025;
  _radius = (noise(_radiusnoise) * 550) +1;
   
  _angnoise += 0.005;
  _angle += (noise(_angnoise) * 6) - 3;
  if (_angle > 360) { _angle -= 360; }
  if (_angle < 0) { _angle += 360; }
   
  // wobble centre
 
  
  float centerX = width/2 + (noise(_xnoise) * 100) - 50;
  float centerY = height/2 + (noise(_ynoise) * 100) - 50;

float rad=radians (_angle);
float x1= centerX+(_radius*cos(rad));
float y1 =centerY +(_radius*sin(rad));

float opprad =rad+PI;
float x2=centerX+(_radius*cos(opprad));
float y2 =centerY +(_radius*sin(opprad));


_strokeCol+=_strokeChange;
if(_strokeCol>254){_strokeChange =-1;}
if(_strokeCol<254){_strokeChange =1;}
stroke(_strokeCol,60);
strokeWeight(1);
line(x1,y1,x2,y2);

}

//if key pressed than centre/angle shifs

void keyPressed() {
  if (keyPressed == true) {
    _xnoise += 0.2;
    _ynoise += 0.2;
  } else {
    _angnoise += 0.005;
    
  }
}

//if mouse moved than angle and num changes

//void mouseMoved() {
   //_num =mouseX;
   //_angle =mouseY;
//}


