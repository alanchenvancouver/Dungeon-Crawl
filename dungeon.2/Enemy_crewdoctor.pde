class crewDoctor extends Enemy{
    float rand;
  int countDowna = 1200;
  int shotTimera = 1200;
  int a;
  int b;
  
    int countDownb;
  int shotTimerb = 180;
  
    int countDownc;
  int shotTimerc = 600;

  crewDoctor(int x , int y){
  super(3000,130,x,y,width/2,height/2,45,0,0,20,2000,2,0);
  a = x;
  b = y;
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {
    stroke(black);
    strokeWeight(2);
    fill(blue);
    image(crew, loc.x,loc.y, size,size);
    fill(black);
    textSize(22);
    text(hp, loc.x, loc.y);
  }
  ////////////////////////////////////////////////////////////
  void act(){
    super.act();
    
    vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);
    vel.setMag(1);

//=======================================================  
countDowna = countDowna + 1;
    if (countDowna > shotTimera){
      int s = 0;
      while (s < 6){
      rand = random(0,100);
  if (rand < 12)    myGame.add(new Follower(a,b,1,4));
  if (rand > 12 && rand < 25) myGame.add(new Skeleton(a,b,1,4));
    if (rand > 25 && rand < 33) myGame.add(new Dracula(a,b,1,4));
    if (rand > 33 && rand < 44) myGame.add(new Slime(a,b,60,50,1,4));
    if (rand > 44 && rand < 54)myGame.add(new SkeletonArch(a,b,1,4));
    if (rand > 54 && rand < 67)myGame.add(new Spider(a,b,1,4));
    if (rand > 67 && rand < 71) myGame.add(new Dryad(a,b,1,4));
    if (rand > 71 && rand < 74) myGame.add(new Mummy(a,b,1,4));
    if (rand > 74 && rand < 79)myGame.add(new Witch(a,b,1,4));
    if (rand > 79 && rand < 86) myGame.add(new Ghost(a,b,1,4));
    if (rand > 86 && rand < 94)myGame.add(new Wolfman(a,b,4)); 
        if (rando > 94) myGame.add(new Pumpkin(a,b,1,4)); 
        s++;
      }
    countDowna = 0;
    s = 0;
    }
 //=================================================================
 countDownb = countDownb + 1;
 if (countDownb > shotTimerb){
 myGame.add(new EnemyBullet(loc.x, loc.y,20,55,16));
    countDownb = 0;
    }
 //=============================================================================   
     countDownc = countDownc + 1;
 if (countDownc > shotTimerc){
hp = hp + 600;
    countDownc = 0;
    }
    //================================================================
    
    
  }
  /////////////////////////////////////////////////////////
}
