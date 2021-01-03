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
    int choice = int(random(100)); //<>//
    if (choice < 20) {
      x++;
    } else if (choice < 30) {
      x--;
    } else if (choice < 40) {
      y++;
    } else  {
      y--;
    }
  }
  
}
