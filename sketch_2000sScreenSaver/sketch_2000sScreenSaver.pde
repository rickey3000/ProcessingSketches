// y = 5x

// x = 5t
// y = 3t + 3
static final int NUM_LINES = 10;

float t;

void setup() {
  size(500, 500);
    background(200);
}

void draw() {
  background(#BFE325);
  stroke(#FF468D);
  strokeWeight(2);
  

  translate(width/2, height/2);
  
  for (int i = 0; i < NUM_LINES; i++) {
  line(x1(t + i + mouseX), y1(t + i + mouseY), x2(t + i), y2(t + i));
  }
  t+= 0.1;
  
  for (int i = 0; i < NUM_LINES; i++) {
  line(x4(t + i - mouseX), y4(t + i -mouseY), x5(t + i), y5(t + i));
  }
  t+= 0.1;
}


float x1(float t) {
  return sin(t / 10) * 100 + sin(t / 5) * 20;
}

float y1(float t) {
  return cos(-t / 10) * 100 + sin(t/5) * 50;
}

float x2(float t) {
  return sin(t / 10) * 200 + sin(t) * 2;
}

float y2(float t) {
  return cos(t / 20) * 200 + cos(t / 12) * 20;
}

float x4(float t) {
  return sin(t / 10) * 100 + sin(t / 10) * 50;
}

float y4(float t) {
  return cos(-t / 10) * 100 + sin(t/8) * 20;
}

float x5(float t) {
  return sin(t / 10) * 200 + sin(t) * 5;
}

float y5(float t) {
  return cos(t / 100) * 20 + cos(t / 15) * 30;
}
