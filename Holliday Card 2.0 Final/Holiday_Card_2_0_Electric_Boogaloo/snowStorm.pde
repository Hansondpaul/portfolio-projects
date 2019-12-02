public class SnowStorm{
 private PVector[] flakes;
 private PVector vel; //pixels per frame
 private color white;
 private int[] size;
 private int buildup;
 
 public SnowStorm(int count, int startingSize, int maxSize){
   
   flakes = new PVector[count]; 
   vel = new PVector(0,1);
   white = (255);
   size = new int[count];
   buildup = 0;
   
   for(int i = 0; i < count; i++){
    flakes[i] = new PVector(random(0,400), random(-600,0));
    size[i] = (int)random(startingSize,maxSize);
   }
 }
  
  public void move(){
    for(int i = 0; i < flakes.length; i++){
       flakes[i].x += vel.x;
       flakes[i].y += vel.y;
       if(flakes[i].y >= 400){
         flakes[i].y = 25;
         buildup++;
       }
    }
  }
  public void show(){
    fill(white);
    noStroke();
    for(int i = 0; i < flakes.length; i++)
      ellipse(flakes[i].x,flakes[i].y,size[i],size[i]);
    rect(0,500-buildup/16,500,buildup/16);
  }
  
}
