class Fire extends Weapon{
  Fire(){
    super(1,3);
  }
  
  void shoot(){
  if (shotTimer >= threshold){
  for (int i = 0; i < 5; i ++){
  PVector aimVector = new PVector(mouseX - myHero.loc.x, mouseY - myHero.loc.y);
  aimVector.rotate(random(-PI /18,PI/18));
  aimVector.setMag(bulletspeed);
  myGame.add(new Bullet(aimVector, purple, 5,0.15*attack));
    
  }
  shotTimer = 0;
  }
  }
}
