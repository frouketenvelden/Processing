size(500,100);
background(0);
strokeWeight(5);
smooth();

stroke(0,30);
line(20,50,480,50);

stroke(255);
int step=10;
float lastx=-999;
float lasty=-999;
float ynoise=random(10);
float y=50;
int borderx=20;
int bordery=10;
for(int x=borderx;x<=width-borderx; x+=step){
  y=10+noise(ynoise)*80;
  y=bordery+random(height-2*bordery);
  if(lastx>-999){
    line(x,y,lastx,lasty);
  }
  lastx=x;
  lasty=y;
  ynoise+=0.03;
}



