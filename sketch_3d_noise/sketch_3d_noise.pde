import processing.opengl.*;

float xstart,xnoise,ystart, ynoise;

void setup(){
  size (800,600,OPENGL);
  background(0);
  sphereDetail(8);
  noStroke();
  //frameRate(24);
  
  xstart=random(10);
  ystart=random(10);

}

void draw(){
  background(0);
  
  xstart+=0.1;
  ystart+=0.1;
  
  xnoise=xstart;
  ynoise=ystart;
  
    for(int y=0; y<+height;y+=5){
    ynoise+=0.1;
    xnoise=xstart;
    for(int x=0; x<=width;x+=5){
      xnoise+=0.1;
      drawPoint(x,y,noise(xnoise,ynoise));
    }
  }
}

void drawPoint(float x, float y, float noiseFactor){

 pushMatrix();
 translate(x,250-y,-y);
 float sphereSize=noiseFactor*35;
 float grey=150+(noiseFactor*120);
 float alph=150+(noiseFactor*120);
 fill(grey,alph);
 sphere(sphereSize);
 popMatrix();
}


//translate(width/2,height/2,0);
//sphere(100);

