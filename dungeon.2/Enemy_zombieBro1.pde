class Zombie1 extends Enemy{
  int countDown;
  int shootTimer = 120;
  Zombie1(int x , int y){
  super(700,140,x,y,width/2 - 200,height/2 + 200,120,0,0,0,1000,2,0);
  
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {
    stroke(black);
    strokeWeight(2);
    fill(blue);
    image(zombie1, loc.x,loc.y, size,size);
    fill(black);
    textSize(22);
    text(hp, loc.x, loc.y);
  }
  ////////////////////////////////////////////////////////////
  void act(){
    //super.act();
  //  vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);
    
     super.act();
   // if(dist(myHero.loc.x,myHero.loc.y,loc.x,loc.y) < 250 ) buttonat = 1;
    //if (buttonat == 1) {
      vel = new PVector(-myHero.vel.x,myHero.vel.y);
      
     //=====================================================================
      countDown = countDown + 1;
      if (shootTimer < countDown){
      myGame.add(new EnemyBullet(loc.x, loc.y,26,35,6.5));
      countDown = 0;
     // }
   //=================================================================== 
      
    }
    
    vel.setMag(0.9);
    //========================================================================
      int i =0;
    while (i < myGame.size()) {
      GameObject obj = myGame.get(i);

       if ( obj instanceof Bullet) {
     float d = dist(obj.loc.x, obj.loc.y, loc.x, loc.y);
        if (d <= size/2 + obj.size/2 && obj.roomX == myHero.roomX && obj.roomY == myHero.roomY ) myGame.add(new Worm());
       }
       i++;
    }
    //=====================================================================
  }
}
