class EnemyBullet extends GameObject {
float s;
float m;
  
   EnemyBullet(float x, float y, float size, int dam , float ma){
     hp = 1;
     s = size;
     m = ma;
     loc = new PVector(x,y);
     vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc . y);
     vel.setMag(m);    
     roomX = myHero.roomX;
     roomY = myHero.roomY;
     damage = dam;
   }
  
  void show() {
    fill(#FF0000);
    circle(loc.x,loc.y , s);
  }

  void act() {
     loc.add(vel);
     if (loc.x < width*0.1) hp = 0;
     if (loc.x > width*0.9) hp = 0;
     if (loc.y < height*0.1) hp = 0;
     if (loc.y > height*0.9) hp = 0;
     
     
       int  i  = 0;
  while(i < myGame.size()){
  GameObject myObj = myGame.get(i);
  if ( myObj instanceof Hero ){
    float d = dist(myHero.loc.x, myHero.loc.y, loc.x, loc.y);
        if (d <= s/2 + myHero.size/2) {
          hp = 0;
          myHero.hp = myHero.hp - damage;
        }
  }
  i++;
  }
 //=============================================================================    
     
  }
}
