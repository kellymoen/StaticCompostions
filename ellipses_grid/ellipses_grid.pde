void setup(){
  size(1920, 1080);
  smooth();
  noLoop();
  noStroke();
  ellipseMode(CENTER);
  background(255,249,242); 
  fill(0);
}
public void draw() {
  color firstColor = color(1,3,127);
  color secondColor = color(159,222,255);
  float[][] ellipseGrid = new float[3][13];
  for (int i = 0; i < ellipseGrid.length; i++) {
    for (int j = 0; j < ellipseGrid[0].length; j++) {
      ellipseGrid[i][j] = sin(radians(j*(360/24))) * 120;
      stroke(lerpColor(firstColor, secondColor, sin(radians(j*(360/24))) * 0.75), 60);
      brokenCircle(0 + (j * 160), 240 + (i * 300) + random(-20, 35), ellipseGrid[i][j]);
    }
    }
  }
  
public void brokenCircle(float x, float y, float size) { 
    for (int i = 0; i < 1000; i++) {
    float randomAngle = radians(random(0,360));
    line(x + random(-5, 5), y + (cos(randomAngle) * size/2), x + (sin(randomAngle) * size/2) + random(-5, 5), y  + (cos(randomAngle) * size/2));
  }
}
