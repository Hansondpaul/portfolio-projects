public class SnowMan{
  private int x;
  private int y;
  
 public SnowMan(int nx, int ny){
    x = nx;
    y = ny;
  }
  
  void show(){
    stroke(0, 0, 0);
    fill(255, 255, 255);
    ellipse(x-50, y-100, 100, 100);
    ellipse(x-40, y-175, 80, 80);
    ellipse(x-30, y-225, 60, 60);
    
    drawHat(); 
  }
  void drawHat(){
    noStroke();
    fill(#000000);
    rect(x-30, y-225, 60, 10);
    rect(x-18, y-251, 36, 36);
    fill(0, 0, 0);
    ellipse(x-14, y-200, 8, 8);
    ellipse(x+6, y-200, 8, 8);
    for(int i = 0; i < 4; i++)
    ellipse(x-4,y-(160-(i*40)),8,8);
  }
}
