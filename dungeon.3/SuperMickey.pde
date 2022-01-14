class Mickey extends Enemy{
  int shootTimer = 10;
  int countDown;
  Mickey(int x , int y){
  super(2500,100,x,y,random(width*0.3,width*0.7),random(height*0.3,height*0.7),15,1,0,0,1,0,0);
  
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {
    stroke(black);
    strokeWeight(2);
    fill(blue);
    image(mickey, loc.x,loc.y, size,size);
    fill(black);
    textSize(16);
    text(hp, loc.x, loc.y);
  }
  ////////////////////////////////////////////////////////////
  void act(){
    super.act();
    vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);
    vel.setMag(2);
    countDown = countDown + 1;
      if (shootTimer < countDown && buttonat == 1){
      myGame.add(new EnemyBullet(loc.x, loc.y,25,18,1));
      countDown = 0;
      myGame.add(new Message("How's your day", 1));
      }


    
    
    
  }
  /////////////////////////////////////////////////////////
}
