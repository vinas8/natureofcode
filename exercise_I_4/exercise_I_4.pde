import java.util.Random;
Random generator;

void setup() {
  size(640,360);
  generator = new Random();
}

void draw() {
  float x = (float)generator.nextGaussian() * 50 + width/2;
  float y = (float)generator.nextGaussian() * 50 + height/2;
  
  float r = (float)generator.nextGaussian() * 20 + 128;
  float g = (float)generator.nextGaussian() * 50 + 128;
  float b = (float)generator.nextGaussian() * 50 + 128;
  
  constrain(r,0,255);
  constrain(g,0,255);
  constrain(b,0,255);
  
  fill(r,g,b,100);
  ellipse(x, y, 20, 20);
}
