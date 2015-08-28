void setup(){
  size(1920, 1080);
  background(255,249,242);
  smooth();
  noLoop();
}
void draw(){
  color firstColor = color(1,3,127);
  color secondColor = color(159,222,255);
  strokeWeight(1.5);
  for (int i = 0; i < 4000; i++) {
    stroke(lerpColor(firstColor, secondColor, random(0.5,0.9)), 80);
    float randomAngle = radians(random(0,360));
    line(960 + random(-30, 30), 540  + (cos(randomAngle) * 300), 960 + (sin(randomAngle) * 300) + random(-5, 5), 540  + (cos(randomAngle) * 300));
  }
  }
