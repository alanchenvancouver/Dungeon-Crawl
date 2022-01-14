class Bullet extends GameObject {
float s;
PVector aim;
color colour;
  
   Bullet(PVector aimV, color c, float size, float dam){
     hp = 1;
     s = size;
     aim = aimV;
     colour = c;
     loc = new PVector(myHero.loc.x, myHero.loc.y);
     aim.add(aim);
     roomX = myHero.roomX;
     roomY = myHero.roomY;
     damage = dam;
   }
  
  void show() {
   fill(colour);
    circle(loc.x,loc.y , s);
  }

  void act() {
     loc.add(aim);
     if (loc.x < width*0.1) hp = 0;
     if (loc.x > width*0.9) hp = 0;
     if (loc.y < height*0.1) hp = 0;
     if (loc.y > height*0.9) hp = 0;
     
  }
}
