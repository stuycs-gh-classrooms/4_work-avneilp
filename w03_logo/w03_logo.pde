void setup(){
  fullScreen();
  background(0);
  
}
void draw(){
  drawChar(width/2, height-100);
}
void drawChar(float x, float y){
  noStroke();
  fill(50);//legs
  rect(x-25, y-20, 12, 20);
  rect(x+13, y-20, 12, 20);
  ellipse(x-25, y-5, 15, 10);
  ellipse(x+25, y-5, 15, 10);
  rect(x-20, y-90, 40, 50);
  rect(x-30, y-70, 60, 5);
  fill(200);
  ellipse(x, y-40, 100, 50);//head
  fill(50);//face
  ellipse(x-27, y-42, 7, 7);
  ellipse(x+27, y-42, 7, 7);
  noFill();
  strokeWeight(3);
  stroke(50);
  ellipse(x, y-40, 35, 15);
  noStroke();
  fill(200);
  rect(x-22,y-60,44,20);
}
