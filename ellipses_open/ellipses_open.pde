void setup(){
  size(1920, 1080);
  smooth();
  noLoop();
  noStroke();
  ellipseMode(CENTER);
  background(255,249,242); 
}

public void draw() {
  //ellipse(960,540, 1600, 900);
  color firstColor = color(1,3,127);
  color secondColor = color(159,222,255);
  for (int i = 60; i > 0; i-= 3) {
  float lerpVal = (float(i)/60);
  float dx = 700 - (i * 10);
  float xPos = 960 - dx;
  float xPos2 = 960 + dx;
  float yPos = sqrt(sq(450) * (1 - (sq(dx)/sq(700)))) + 540;
  float yPos2 = -sqrt(sq(450) * (1 - (sq(dx)/sq(700)))) + 540;
  fill(lerpColor(secondColor, firstColor, lerpVal +0.2 ), 250);
  ellipse(xPos,yPos, 150- i * 2.5, 150 - i * 2.5);
  ellipse(xPos,yPos2, 150 - i * 2.5 ,150 - i * 2.5);
  ellipse(xPos2,yPos, 150- i * 2.5, 150 - i * 2.5);
  ellipse(xPos2,yPos2, 150 - i * 2.5 ,150 - i * 2.5);
  }
  fill(lerpColor(firstColor, secondColor, 0.8), 255);
  ellipse(260, 540, 260, 260);
  ellipse(1660, 540, 260, 260);
}
