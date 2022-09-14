size(500, 500);
background(0);
noFill();
strokeWeight(3);
for(int i = 500; i>0; i--){
  stroke(200-i/3,155-i/5, 100+i/5);
  circle(150+i/5, 150+i/5, i);
  square(0,0,i);
  ellipse(250,250,i,i/5);
};
