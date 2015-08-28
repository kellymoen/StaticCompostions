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
  strokeWeight(1.7);
  for (int i = 45; i < 180; i+= 2){
    float lerpVal = ((float)i - 45) /135;
    stroke(lerpColor(firstColor, secondColor,lerpVal), 100);
    pushMatrix();
    translate(960,540);
    rotate(radians(i));
    rect(0,0, 400, 600 + i + random(-50, + 50));
    popMatrix();
  }
}
