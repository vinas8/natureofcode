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
    float stepSize = abs((int)generator.nextGaussian() * 5);
    
    for(int i=0; i<stepSize; i++) {
      if (choice < 0.25) {
        x++;
      } else if (choice < 0.5) {
        x--;
      } else if (choice < 0.75) {
        y--;
      } else  {
        y++;
      }
      
      display();
    }
    
    x = constrain(x, 0, width-ceil(stepSize)); //<>//
    y = constrain(y, 0, height-ceil(stepSize));
  }
}
