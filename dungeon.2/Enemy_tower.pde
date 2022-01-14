class Tower extends Enemy{
  int countDown;
  int shootTimer = 80;
  Tower(int bt){
  super(200,55,3,3,random(width*0.1,width*0.9 ),random(height*0.1,height*0.9),0,bt,0,0,1,2,0);
  
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {
    stroke(black);
    strokeWeight(2);
    fill(blue);
    image(tower, loc.x,loc.y, size,size);
    fill(black);
    textSize(18);
    text(hp, loc.x, loc.y);
  }
  ////////////////////////////////////////////////////////////
  void act(){
    super.act();
    if (buttonat == 1) {
      
     //=====================================================================
      countDown = countDown + 1;
      if (shootTimer < countDown){
      myGame.add(new EnemyBullet(loc.x, loc.y,14,7,5));
      countDown = 0;
      }
   //=================================================================== 
      
    }
    vel.setMag(0);
    //===================================================================
if(solomonDK.hp <= 0) hp = 0;
   //=================================================================
    
  }
  /////////////////////////////////////////////////////////
}
