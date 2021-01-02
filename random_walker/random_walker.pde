Walker walker;
int screenWidth = 200;
int screenHeight = 200;

void setup() {
  size(200,200);
  background(255);
  walker = new Walker();
  frameRate(1000000);
}

void draw() {
   walker.walk();
   walker.display();
}
