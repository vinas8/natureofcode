class Walker {  //<>//
  int x;
  int y;
  int prevX, prevY;
  
  Walker() {
    x = width/2;
    y = height/2;
  }

  void display() {
      line(prevX, prevY, x,y); 
  }
 
  void step() {
    prevX = x;
    prevY = y;
    
    int stepsizeX = montecarlo();
    int stepsizeY = montecarlo();
    
    int []stepsizeXMinusPlus = { -stepsizeX, stepsizeX };
    int []stepsizeYMinusPlus = { -stepsizeY, stepsizeY };
    stepsizeX = stepsizeXMinusPlus[(int)random(stepsizeXMinusPlus.length)];
    stepsizeY = stepsizeYMinusPlus[(int)random(stepsizeYMinusPlus.length)];
     //<>//
    x += stepsizeX;
    y += stepsizeY;
    
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
  }
  
  int montecarlo() {
    while (true) {
      int r1 = (int)random(10);
      int r2 = (int)random(10); //<>//
      int y = r1 * r1;
      
      if (r2 > y) {
        return r1;
      }
    }
  }
}
