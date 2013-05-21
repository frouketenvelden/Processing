import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class circle_expand extends PApplet {

int diam =10;
float centX,centY;

public void setup(){
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
public void draw(){
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
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "circle_expand" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
