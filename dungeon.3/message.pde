class Message extends GameObject {
int lm;
String text;
 Message(String t,int lmm){
  loc = new PVector(myHero.loc.x, myHero.loc.y);
  hp = 60;

  vel = new PVector(0, - 1);
  roomX = myHero.roomX;
  roomY = myHero.roomY;
  lm = lmm;
  text = t;
   }
  
  void show() {
      fill(#F0293A);
      textSize(22);
     text(text + lm,loc.x,loc.y);
  }

  void act() {
  super.act();
  loc.y = loc.y + vel.y;
  if(dist(myHero.loc.x,myHero.loc.y,loc.x,loc.y) > 90) hp = 0;
  if (loc.y == height * 0.1) hp = 0;
  }
  
 
}
