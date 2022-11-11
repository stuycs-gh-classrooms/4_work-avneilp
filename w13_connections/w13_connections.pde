int[] xvals = new int[100];
int[] yvals = new int[100];
int numPoints = 0;
void setup(){
  size(600, 400);
  background(0);
  stroke(255);
  makeLines(xvals, yvals, 10);
  drawLines(xvals, yvals, numPoints);
  println(xvals);
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
