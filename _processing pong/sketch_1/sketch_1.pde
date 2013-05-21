//setup background

size(500, 300);
smooth();
background(100);

//draw crossed lines

stroke(255, 0, 0);
strokeWeight(4);

float centX=width/2;
float centY=height/2;
stroke(130,0,0);
strokeWeight(1);
fill(255);


ellipse(centX,centY, 50, 50);
line(centX-70,centY-70,centX+70,centY+70);
line(centX+70,centY-70,centX-70,centY+70);

