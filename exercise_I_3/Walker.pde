class Walker {
  int x;
  int y;
  
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  void display() {
    stroke(0);
    point(x,y);
  }
  
  void step() {
    float r = random(2); //<>//
    
    if (r < 0.25) {
      x++;
    } else if (r < 0.5) {
      x--;
    } else if (r < 0.75) {
      y++;
    } else if (r < 1)  {
      y--;
    } else if (r < 2)  {
      if (mouseY > y) {
        y++;
      } else if (mouseY < y) {
        y--;
      }
      
      if (mouseX > x) {
        x++;
      } else if (mouseX < x) {
        x--;
      }
    }
  }
  
}
