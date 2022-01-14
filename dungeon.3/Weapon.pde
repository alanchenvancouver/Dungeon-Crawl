class Weapon extends GameObject {

  int shotTimer;
  int threshold = 30;
  int bulletspeed = 5;
///////////////////////////////////////////////////////////////////////
  Weapon() {
    shotTimer = 60;
    threshold = 30;
    bulletspeed = 5;

  }
///////////////////////////////////////////////////////////////
Weapon(int thr, int bs) {
  shotTimer  = 0;
  threshold = thr; 
  bulletspeed = bs;
  
  
  
}
  ///////////////////////////////////////
  void update (){
  shotTimer++;  
  }
 /////////////////////////////////////////////////////////////////// 
  void shoot(){
   if (shotTimer >= threshold){
     PVector aimVector = new PVector (mouseX - myHero.loc.x, mouseY - myHero.loc.y);
     aimVector.setMag(bulletspeed);
    myGame.add(new Bullet(aimVector, purple, 10,1));
    shotTimer = 0;
    
   }
     
  }
  
  
  



}
