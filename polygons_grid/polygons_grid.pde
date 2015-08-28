void setup(){
  size(1920, 1080);
  smooth();
  noLoop();
  noStroke();
  rectMode(CENTER);
  background(255,249,242); 
}

public void draw() {
  color firstColor = color(1,3,127);
  color secondColor = color(159,222,255);
  for(int i = 0; i < 200; i++){
    fill(lerpColor(firstColor, secondColor,random(0.4,0.8)), 60);
    randomQuad(960 - (i * 4.8), 0 + (i * 2.7), 10, 5);
  }
  for(int i = 0; i < 200; i++){
    fill(lerpColor(firstColor, secondColor,random(0.4,0.8)), 60);
    randomQuad(960 + (i * 4.8), 0 + (i * 2.7), 10, 5);
  }
    for(int i = 0; i < 400; i++){
    fill(lerpColor(firstColor, secondColor,random(0.4,0.8)), 60);
    randomQuad(480, 0 + (i * 2.7), 10, 5);
  }
    for(int i = 0; i < 400; i++){
    fill(lerpColor(firstColor, secondColor,random(0.4,0.8)), 60);
    randomQuad(1440, 0 + (i * 2.7), 10, 5);
  }
    for(int i = 0; i < 200; i++){
    fill(lerpColor(firstColor, secondColor,random(0.4,0.8)), 60);
    randomQuad(960 - (i * 4.8), 1080 - (i * 2.7), 10, 5);
  }
  for(int i = 0; i < 200; i++){
    fill(lerpColor(firstColor, secondColor,random(0.4,0.8)), 60);
    randomQuad(960 + (i * 4.8), 1080 - (i * 2.7), 10, 5);
  }
  for(int i = 0; i < 400; i++){
    fill(lerpColor(firstColor, secondColor,random(0.4,0.8)), 60);
    randomQuad(0 + (i * 4.8), 540, 10, 5);
  }
    for(int i = 0; i < 400; i++){
    fill(lerpColor(firstColor, secondColor,random(0.3,0.5)), 120);
    randomQuad(0 + (i * 4.8), 0 + (i * 2.7), 15, 5);
  }
  for(int i = 0; i < 400; i++){
    fill(lerpColor(firstColor, secondColor,random(0.3,0.5)), 120);
    randomQuad(1920 - (i * 4.8), 0 + (i * 2.7), 15, 5);
  }
  for(int i = 0; i < 400; i++){
    fill(lerpColor(firstColor, secondColor,random(0.3,0.5)), 120);
    randomQuad(960, 0 + (i * 2.7), 15, 5);
  }

}

  

  
public void randomQuad(float x, float y, float radius, int variance) {
  float angle = TWO_PI / 4;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius + random(-variance, variance);
    float sy = y + sin(a) * radius + random(-variance, variance);
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
