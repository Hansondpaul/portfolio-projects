public class Light{
  PVector location;
  color shine;
  int counter;
  
  public Light(int x, int y){
   location = new PVector(x,y);
   shine = (255);
   counter = 0;
  }
  
  public void switchColor(){
   int c = (int)random(0,6);
   switch (c){
    case 0: shine = (#FF0000);
    break;
    case 1: shine = (#00FF00);
    break;
    case 2: shine = (#0000FF);
    break;
    case 3: shine = (#00FFFF);
    break;
    case 4: shine = (#FFFF00);
    break;
    case 5: shine = (#FF00FF);
    break;
   }
  }
  
  public void show(){
   stroke(0);
   fill(shine);
   ellipse(location.x,location.y,5,10);
   counter++;
   if(counter == 60){
     switchColor();
     counter = 0;
   }
  }
}
