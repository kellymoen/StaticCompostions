void setup() {
  size(1920, 1080);
  background(0);
  smooth();
  noLoop();
  background(255,249,242); 
  ellipseMode(CENTER);
}

void draw() {
  stroke(0,20);
  fill(255, 255,255, 20); 
  reverseEllipseShape(320, 540, 100);
  radEllipseShape(960, 540, 250);
  reverseEllipseShape(1600, 540, 100);
}
  
void radEllipseShape(int centerX, int centerY, float sizeFactor) {
  for (int i = 0; i < 360; i += 5){
    float lerpVal = float(i)/360;
    color firstColor = color(1,3,127);
    color secondColor = color(159,222,255);
    fill(lerpColor(firstColor, secondColor, lerpVal * 0.7 + 0.3), 200);
    ellipse(centerX + (sin(i) * sizeFactor), centerY + (cos(i) * sizeFactor), sizeFactor - (i * (sizeFactor/400)), sizeFactor - (i * (sizeFactor/400)));
  }
}
  
void reverseEllipseShape(int centerX, int centerY, float sizeFactor) {
  for (int i = 0; i < 360 ; i += 5){
    float lerpVal = float(i)/360;
    color firstColor = color(1,3,127);
    color secondColor = color(159,222,255);
    fill(lerpColor(firstColor, secondColor, lerpVal), 180);
    ellipse(centerX + (-sin(i) * sizeFactor), centerY + (cos(i) * sizeFactor), sizeFactor - (i * (sizeFactor/400)), sizeFactor - (i * (sizeFactor/400)));
  }  
}