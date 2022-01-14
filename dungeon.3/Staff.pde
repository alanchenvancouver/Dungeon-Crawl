class Staff extends Weapon{
  int siz = 5;;
  Staff(){
    super(120,15);
  }
  
 void shoot(){
   println(space);
   if (shotTimer >= threshold){
     PVector aimVector = new PVector (mouseX - myHero.loc.x, mouseY - myHero.loc.y);
     aimVector.setMag(bulletspeed);
    if(space == true){
       println(siz);
       fill(purple);
     circle(myHero.loc.x,myHero.loc.y,siz);
     siz = siz + 1;
    }
     if(siz > 50){ 
     myGame.add(new Bullet(aimVector, purple, siz,siz*attack));
         shotTimer = 0;
         siz = 5;
         println(space);
    }     
   } 
   
  }
  
  
  
  
}
