class ShotGun extends Weapon{
  ShotGun(){
    super(90,5);
  }
  
  void shoot(){
  if (shotTimer >= threshold){
  for (int i = 0; i < 19; i ++){
  PVector aimVector = new PVector(mouseX - myHero.loc.x, mouseY - myHero.loc.y);
  aimVector.rotate(random(-PI /16,PI/16));
  aimVector.setMag(bulletspeed);
  myGame.add(new Bullet(aimVector, purple, 10,2*attack));
    
  }
  shotTimer = 0;
  }
  }
}
