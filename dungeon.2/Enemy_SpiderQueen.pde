class SpiderQueen extends Enemy{
 int countDowna = 550;
  int shotTimera = 600;
   int countDownb = 0;
  int shotTimerb = 450;
  SpiderQueen(int x , int y){
  super(12000,210,x,y,width/2,height/2,45,0,0,20,4000,2,0);
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {
    stroke(black);
    strokeWeight(2);
    fill(blue);
    image(queen, loc.x,loc.y, size,size);
    fill(black);
    textSize(22);
    text(hp, loc.x, loc.y);
  }
  ////////////////////////////////////////////////////////////
  void act(){
    super.act();
    
    vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);
    vel.setMag(0.6);

//=======================================================  
countDowna = countDowna + 1;
    if (countDowna > shotTimera){
      myGame.add(new Spider(4,8,1,8));
      myGame.add(new Spider(4,8,1,8));
      myGame.add(new Spider(4,8,1,8));
      myGame.add(new Spider(4,8,1,8));         
    countDowna = 0;
    }
 //=================================================================
 countDownb = countDownb + 1;
 if (countDownb > shotTimerb){
myGame.add(new EnemyBullet(loc.x, loc.y,30,125,12));
    countDownb = 0;
    }
 //=============================================================================   

    //================================================================
    

    
  }
  /////////////////////////////////////////////////////////
}
