int maxPoints = 1000;
int[] xvals = new int[maxPoints];
int[] yvals = new int[maxPoints];
int numPoints = 0;
int xMod = 0;
int yMod = 0;
void setup(){
  size(600, 400);
  background(0);
  stroke(255);
  drawLines(xvals, yvals, numPoints);
}
void draw(){
  background(0);
  drawLines(xvals, yvals, numPoints);
  moveLines(xvals, yvals, xMod, yMod, numPoints);
}
void makeLines(int[] xs, int[] ys, int points){
  for(int i = 0; i < points; i++){
    xs[i] = (int)random(width);
    ys[i] = (int)random(height);
  }
  numPoints = points;
}
void drawLines(int[] xs, int[] ys, int points){
  strokeWeight(3);
  for(int i = 1; i < points; i++){
    line(xs[i-1], ys[i-1], xs[i], ys[i]);
  }
}

void moveLines(int[]xs, int[]ys, int xMod, int yMod, int points){
  for(int i  = 0; i < points; i+= 2){
    xs[i] += xMod;
    ys[i] += yMod;
  }
}

void mousePressed(){
  xvals[numPoints] = mouseX;
  yvals[numPoints] = mouseY;
  numPoints++;
}

void keyPressed(){
  if(key == 'c'){
    numPoints = 0;
  }
  if(key == CODED){
    if(keyCode == UP){
      moveLines(xvals, yvals, 0, -3, numPoints);
    }
    if(keyCode == DOWN){
      moveLines(xvals, yvals, 0, 3, numPoints);
    }
    if(keyCode == LEFT){
      moveLines(xvals, yvals, -3, 0, numPoints);
    }
    if(keyCode == RIGHT){
      moveLines(xvals, yvals, 3, 0, numPoints);
    }
  }
}
