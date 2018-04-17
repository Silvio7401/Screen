Line[] myLines = new Line[20];

void setup() {
  //size(displayWidth,displayHeight);
  //size(400, 400);
  fullScreen();
  frameRate(40);
  background(0);
  for(int i = 0; i<myLines.length; i++) {
    myLines[i] = new Line(random(width), random(height), random(1,5), random(10,20));
  }
}

void draw() {
  if (frameCount > 1800) {
    frameCount = 0;
    background(0);
  } else {
  for(int i = 0; i<myLines.length; i++) {
    myLines[i].display();
  }
  }
}
  