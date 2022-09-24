int timer = 0;
void setup(){
  size(500, 500);
  background(0);
}

void draw(){
  timer++;
  fill(0, 20);
  noStroke();
  rect(0, 0, width, height);
  if(timer%50 == int(random(20))){
    background(0);
   drawLightning(width/2+int(random(-100, 100)), 0, int(random(50)+20));
  }
}

void drawLightning(int x, int y, int numParts){
  int nextx = x;
  int nexty = y;
  int initialy = y;
  stroke(200+random(55), 255, 200+random(55));
  strokeWeight(5);
  while (nexty <= height){
    x = nextx;
    y = nexty;
    nextx = x + int(random(-5, 5));
    nexty = y + (height-initialy)/numParts;
    line(x, y, nextx, nexty);
  }
}
