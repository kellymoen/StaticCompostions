void setup(){
  size(1920, 1080);
  smooth();
  background(255,249,242); 
  noLoop();
}

void draw(){
  strokeWeight(1);
  color firstColor = color(1,3,127);
  color secondColor = color(159,222,255); 
  int threads = 8000;
  float[] x = new float[threads];
  float[] xb = new float[threads];
  float[] lerp = new float[threads];
  for (int i = 0; i < x.length; i++){
    lerp[i] = random(1.0);
    stroke(lerpColor(firstColor, secondColor, lerp[i]), 80);
    x[i] = random(-624, 624);
    if (x[i] >= 0) xb[i] = random(-624, 0);
    if (x[i] < 0) xb[i] = random(0, 624);
    line(960 + xb[i], 0, 960 + x[i], 1080);
  }
}