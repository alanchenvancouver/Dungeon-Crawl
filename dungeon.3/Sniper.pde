class SniperRifle extends Weapon{
  SniperRifle(){
    super(100,20);
  }
  
 void shoot(){
   if (shotTimer >= threshold){
     PVector aimVector = new PVector (mouseX - myHero.loc.x, mouseY - myHero.loc.y);
     aimVector.setMag(bulletspeed);
    myGame.add(new Bullet(aimVector, purple, 10,33*attack));
    shotTimer = 0;
    
   }  
  }
  
}
