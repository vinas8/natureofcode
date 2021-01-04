Walker w;

void setup() {
  size(200,200);
  background(255);
  w = new Walker();
}

void draw() {
  w.step();
}
