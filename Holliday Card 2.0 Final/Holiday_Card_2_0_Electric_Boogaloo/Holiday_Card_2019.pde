public SnowStorm snow;
public SnowMan man;
public House home;
public Light[] homeLights;
public PFont font;
void setup(){
  man = new SnowMan(200,397);
  home = new House(300,198);
  snow = new SnowStorm(100,4,7);
  homeLights = new Light[10];
  font = createFont("Aspire-DemiBold.ttf", 30);
  for(int i = 0; i < homeLights.length; i++){
    homeLights[i] = new Light(305+(10*i), 200);
  }
  
  size(400,400);
  background(#082957);
  
  ellipseMode(CORNER);
  rectMode(CORNER);
}

void draw(){
  background(#082957);
  fill(#00FF00);
  rect(0,395,400,395);
  man.show();
  home.show();
  for(int i = 0; i < homeLights.length; i++)
    homeLights[i].show();
  snow.move();
  snow.show();
  drawCloud();
  fill(#00FFFF);
  textFont(font, 32);
  text("Happy Hollidays!",120, 30);
}

void drawCloud(){
  noStroke();
  fill(100);
  ellipse(0,0,280,50); 
  fill(140);
  ellipse(100,0,310,50);
}
