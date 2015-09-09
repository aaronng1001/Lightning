int startX,startY,endX,endY,fad=0;
void setup(){
  size(500, 500);
  frameRate(10);
}

void draw(){
  lightning();
  fade();
  clouds();
}

void lightning(){ 
  if (mousePressed==true){
  if (startX==0){
   int colr= (int)random(0,255);
   int colg= (int)random(0,255);
   int colb= (int)random(0,255);
   int weight= (int)random(3,5);
   stroke(colr,colg,colb);
   strokeWeight(weight);
   startX=mouseX;
   println(startX);
 }
 while(startY<500){
 endX=startX + (int)random(-30,30);
 endY=startY + (int)random(0,30);
 line(startX,startY,endX,endY);
 startX=endX;
 startY=endY;
 }
 if (endY>=500){
 noStroke();
 fill(255,0,0);
 int size= (int)random(30,75);
 ellipse(endX,500,size,size);
 startY=0;
 startX=0;
 }
 }
}

void fade(){
 if (fad==255){
 fad=100;
 }
 if(mousePressed==true){
 fad=100;
 }
 noStroke();
 fill(200,200,200,fad);
 rect(0,0,500,500); 
 fad=fad+5;
 println(fad);
}

void clouds(){
fill(100,100,100);
ellipse(0,30,123,65);
ellipse(60,25,156,83);
ellipse(125,20,176,66);
ellipse(188,45,193,66);
ellipse(242,25,165,85);
ellipse(304,40,143,70);
ellipse(366,35,175,90);
ellipse(429,20,126,80);
ellipse(492,23,178,75);
}