class AutoPistol extends Weapon{
 
  AutoPistol(){
   super(10,5); 
  }
  /////////////////////////////////////////////////
  void shoot(){
   if (shotTimer >= threshold){
     PVector aimVector = new PVector (mouseX - myHero.loc.x, mouseY - myHero.loc.y);
     aimVector.setMag(bulletspeed);
    myGame.add(new Bullet(aimVector, purple, 10,3*attack));
    shotTimer = 0;
    
   }
    
  }
  ///////////////////////////////////////////////////////
}
