void setup(){
  size(1920, 1080);
  smooth();
  noLoop();
  noFill();
  rectMode(CENTER);
  background(255,249,242); 
}

public void draw() {
  color firstColor = color(1,3,127);
  color secondColor = color(159,222,255);
  noStroke(); 
    for (int i = 0; i < 1080; i++) {
    fill(lerpColor(firstColor, secondColor,random(0.2,0.6)), 60);
    randomTriangle(960 + (sin(radians(i)) * 100), 540 + cos(radians(i)) * 100, 5, 40);
  }
      for (int i = 0; i < 1080; i++) {
    fill(lerpColor(firstColor, secondColor,random(0.4,0.8)), 60);
    randomTriangle(960 + (sin(radians(i)) * 250), 540 + cos(radians(i)) * 250, 10, 40);
  }
  for (int i = 0; i < 1080; i++) {
    fill(lerpColor(firstColor, secondColor,random(0.7,1)), 100);
    randomTriangle(960 + (sin(radians(i)) * 400), 540 + cos(radians(i)) * 400, 20, 50);
  }
}
  
///MODDED FROM SOURCE https://www.processing.org/examples/regularpolygon.html
public void randomTriangle(float x, float y, float radius, int variance) {
  float angle = TWO_PI / 3;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius + random(-variance, variance);
    float sy = y + sin(a) * radius + random(-variance, variance);
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
