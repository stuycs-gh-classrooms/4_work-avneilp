int maxPoints = 1000;
int[] xvals = new int[maxPoints];
int[] yvals = new int[maxPoints];
int numPoints = 0;
void setup(){
  size(600, 400);
  background(0);
  stroke(255);
  drawLines(xvals, yvals, numPoints);
}
void draw(){
  background(0);
  drawLines(xvals, yvals, numPoints);
  if (numPoints>= maxPoints){
    numPoints = 0;
  }
}
void makeLines(int[] xs, int[] ys, int points){
  for(int i = 0; i < points; i++){
    xs[i] = (int)random(width);
    ys[i] = (int)random(height);
  }
  numPoints = points;
}
void drawLines(int[] xs, int[] ys, int points){
  for(int i = 1; i < points; i++){
    line(xs[i-1], ys[i-1], xs[i], ys[i]);
  }
}
void mousePressed(){
  xvals[numPoints] = mouseX;
  yvals[numPoints] = mouseY;
  numPoints++;
}
