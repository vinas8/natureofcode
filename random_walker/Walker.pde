class Walker {
  int x,y;
  int whereToWalk;
  int randomWalk;
  int[] xy;
  int[][] unsetXY;
  int unsetXYSize = screenWidth*screenHeight;
  boolean[][] grid = new boolean[screenWidth][screenHeight];
  
  Walker() {   
    x = width/2;
    y = width/2;
    
    for(int ix=0; ix<grid.length; ix++) {
      for(int iy=0; iy<grid[ix].length; iy++) {
        grid[ix][iy] = false;
      }
    }
  }
  
  void walk() {
    boolean near = false;
    int depth = 1;
    
    while (near == false) {
      randomWalk = (int)random(4);
      near = true;
      
      if (x >= width) {
        x = width-depth; //<>//
      }
      if (y >= height) {
         y = height-depth; //<>//
      }
      
      if (randomWalk == 0) {
        x = x+depth;
        if (x >= width) {
           continue; //<>//
        }
        if (x < 0) {
          xy = getRandomXY();
          x= xy[0];
          y = xy[1];
        }
        if (!grid[x][y]) {
          grid[x][y] = true;
        } else {
          near = false;  
          depth++;
        }
      }
      else if (randomWalk == 1) {
        x = x-depth;
        if (x >= width) {
           continue;
        }
        if (x < 0) {
          xy = getRandomXY();
          x= xy[0];
          y = xy[1];
        }
        if (!grid[x][y]) {
          grid[x][y] = true;
        } else {
          near = false;  
          depth++;
        }
      }
      else if (randomWalk == 2) {
        y = y-depth;
        if (y >= height) {
          continue;
        }
        if (y < 0) {
          xy = getRandomXY();
          x = xy[0];
          y = xy[1];
        }
        if (!grid[x][y]) {
          grid[x][y] = true;
        }else {
          near = false;  
          depth++;
        }
      }
      else if (randomWalk == 3) {
        y = y+depth;
        if (y >= height) {
          continue;
        }
        if (y < 0) {
          xy = getRandomXY();
          x= xy[0];
          y = xy[1];
        }
        if (!grid[x][y]) {
          grid[x][y] = true;
        } else {
          near = false;  
          depth++;
        }
      } 
    }
  }
  
  int[] getRandomXY() {
      int index=0;
      boolean found=false;
   
     unsetXY = new int[unsetXYSize][2];
      for(int ix=0; ix<grid.length; ix++) { 
        for(int iy=0; iy<grid[ix].length; iy++) {
              if (grid[ix][iy] == false) {
                unsetXY[index] = new int[]{ix, iy};
                index++;
                found = true;
            }
          } 
      }
      unsetXYSize = index+1; //<>//
      
      if (found == false) { //<>//
        print("finito");
        exit();
      }
      
     return unsetXY[(int)random(0, unsetXY.length)];
  }
  
  void display() {
    stroke(0);
    point(x,y);
  }
}
