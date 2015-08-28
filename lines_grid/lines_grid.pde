void setup() {
  size(1920, 1080);
  smooth();
  strokeWeight(1);
  stroke(1,3,127,40);
  background(255,249,242); 
  noLoop();

}

void draw() {
color firstColor = color(1,3,127);
color secondColor = color(159,222,255); 
float[] arrayTop = new float[400];
float[] arrayBottom = new float[400];
//box
stroke(lerpColor(firstColor, secondColor, 0.8), 50);
for (int i=0; i < 400; i++){
  float var1 = random(-25,25);
  float var2 = random(-25,25);
  int min = 100;
  int max = 400;
  line(min + var1, min + var2, max+ var2, min + var1);
  line(min + var2, min + var1, min + var1, max + var2);
  line(min + var1, max + var2, max + var2, max + var1);
  line(max + var1, min + var2, max + var2, max + var1);
  line(0, 250 + var1, 1920, 250 + var2);
}

stroke(lerpColor(firstColor, secondColor, 0.4), 50);
//vertical lines
for (int i = 0; i < 3; i++) {
  for (int j=0; j < arrayTop.length; j++){
    arrayTop[j] = random(-25,25);
    arrayBottom[j] = random(-25,25);
      line(500 + (80 * i) + arrayTop[j], 0, 500 + (80 * i) + arrayBottom[j], 1080);
  }
}

//horizontal lines
for (int i = 0; i < 3; i++) {
  for (int j=0; j < arrayTop.length; j++){
    arrayTop[j] = random(-25,25);
    arrayBottom[j] = random(-25,25);
      line(0, 500 + (80 * i) + arrayTop[j], 1920, 500 + (80 * i) + arrayBottom[j]);
  }
}

}
