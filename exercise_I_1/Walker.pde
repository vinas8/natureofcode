import java.util.Random;
Random generator;

class Walker {
  int x;
  int y;
  
  Walker() {
    x = width/2;
    y = height/2;
    generator = new Random();
  }
  
  void display() {
    stroke(0);
    point(x,y);
  }
  
  void step() {
    float choice = random(1); //<>//
    float stepSize = (float)generator.nextGaussian();
    
    if (choice < 0.4) {
      x++;
    } else if (choice < 0.5) {
      x--;
    } else if (choice < 0.6) {
      y--;
    } else  {
      y++;
    }
  }
  
}
