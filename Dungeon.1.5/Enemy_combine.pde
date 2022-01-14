class Follower extends Enemy{

  Follower(int x , int y, int bt,int n){
  super(120,80,x,y,random(width*0.3,width*0.7),random(height*0.3,height*0.7),180,bt,0,30,4,n,0.5);
  
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {

    stroke(black);
    strokeWeight(2);
    fill(blue);
    image(zombie, loc.x,loc.y, size,size);
    fill(black);
    textSize(20);
    text(hp, loc.x, loc.y);
  }
  ////////////////////////////////////////////////////////////
  void act(){
    super.act();
    if(dist(myHero.loc.x,myHero.loc.y,loc.x,loc.y) < 250 ) buttonat = 1;
    if (buttonat == 1) vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);

    
    vel.setMag(speeds);
    

  }
  /////////////////////////////////////////////////////////
}
//====================================================================================================================
//====================================================================================================================
//=======================================================================================================================
class Skeleton extends Enemy{
  
  Skeleton(int x , int y, int bt,int n){
  super(55,55,x,y,random(width*0.3,width*0.7),random(height*0.3,height*0.7),60,bt,0,10,3,n,1.5);
  
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {
    stroke(black);
    strokeWeight(2);
    fill(blue);
    image(skeleton, loc.x,loc.y, size,size);
    fill(black);
    textSize(18);
    text(hp, loc.x, loc.y);
  }
  ////////////////////////////////////////////////////////////
  void act(){
    super.act();
     if(dist(myHero.loc.x,myHero.loc.y,loc.x,loc.y) < 250 ) buttonat = 1;
    if (buttonat == 1) vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);
    vel.setMag(speeds);

  }
  /////////////////////////////////////////////////////////
}
//=======================================================================================================================================
//=========================================================================================================================================
//==========================================================================================================================================
class Slime extends Enemy{
  int n_;
  Slime(int x , int y,int s,int hp, int bt, int n){
  super(hp,s,x,y,random(width*0.3,width*0.7),random(height*0.3,height*0.7),15,bt,0,2,1, n,0.75);
  n_ = n;
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {
    stroke(black);
    strokeWeight(2);
    fill(blue);
    image(slime, loc.x,loc.y, size,size);
    fill(black);
    textSize(16);
    text(hp, loc.x, loc.y);
  }
  ////////////////////////////////////////////////////////////
  void act(){
    super.act();
if(dist(myHero.loc.x,myHero.loc.y,loc.x,loc.y) < 250 ) buttonat = 1;
    if (buttonat == 1) vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);
    vel.setMag(speeds);
    

    if (hp <= 0 && size > 50) {
    myGame.add(new Slime(roomX,roomY,40,20,1,n_));
    myGame.add(new Slime(roomX,roomY,40,20,1,n_));
    myGame.add(new Slime(roomX,roomY,40,20,1,n_));
    }


    
    
    
  }
  /////////////////////////////////////////////////////////
}
//==============================================================================================================================================
//===============================================================================================================================================
//===============================================================================================================================================
class Dracula extends Enemy{
  
  Dracula(int x , int y, int bt, int n){
  super(70,60,x,y,random(width*0.3,width*0.7),random(height*0.3,height*0.7),90,bt,20,13,6,n,1.75);
  
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {
    stroke(black);
    strokeWeight(2);
    fill(blue);
    image(dracula, loc.x,loc.y, size,size);
    fill(black);
    textSize(20);
    text(hp, loc.x, loc.y);
  }
  ////////////////////////////////////////////////////////////
  void act(){
  super.act();
    //=========================================================================
    if(dist(myHero.loc.x,myHero.loc.y,loc.x,loc.y) < 250 ) buttonat = 1;
    if (buttonat == 1) vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);
    vel.setMag(speeds);

    
  }
  /////////////////////////////////////////////////////////
}
//=================================================================================================================================================
//=================================================================================================================================================
//=================================================================================================================================================
class Dryad extends Enemy{
  int shootTimer = 90;
  int countDown;
  Dryad(int x , int y, int bt, int n){
  super(125,90,x,y,random(width*0.3,width*0.7),random(height*0.3,height*0.7),0,bt,0,0,8, n,0);
  
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {
    stroke(black);
    strokeWeight(2);
    fill(blue);
    image(dryad, loc.x,loc.y, size,size);
    fill(black);
    textSize(20);
    text(hp, loc.x, loc.y);
  }
  ////////////////////////////////////////////////////////////
  void act(){
    super.act();
    vel.setMag(0);
     //=====================================================================
     if(dist(myHero.loc.x,myHero.loc.y,loc.x,loc.y) < 400 ) buttonat = 1;
      countDown = countDown + 1;
      if (shootTimer < countDown && buttonat == 1){
      myGame.add(new EnemyBullet(loc.x, loc.y,25,18,5));
      countDown = 0;
      }
   //===================================================================   

  }
  /////////////////////////////////////////////////////////
}
//======================================================================================
//======================================================================================
//=======================================================================================================
class Ghost extends Enemy{
  
  Ghost(int x , int y, int bt, int n){
  super(25,55,x,y,random(width*0.3,width*0.7),random(height*0.2,height*0.8),45,bt,0,4,4, n,2.25);
  
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {
    stroke(black);
    strokeWeight(2);
    fill(blue);
    if (buttonat == 1) {
      image(ghost, loc.x,loc.y, size,size);
    fill(black);
    textSize(18);
    text(hp, loc.x, loc.y);
    }
  }
  ////////////////////////////////////////////////////////////
  void act(){
    super.act();
    if(dist(myHero.loc.x,myHero.loc.y,loc.x,loc.y) < 150 ) buttonat = 1;
    if (buttonat == 1) vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);
    vel.setMag(speeds);
  

  }
  /////////////////////////////////////////////////////////
}
//===========================================================================================================================
//===========================================================================================================================
//===========================================================================================================================
class Mummy extends Enemy{
  float rand;
  int countDown;
  int shotTimer = 480;
  int n_;
  Mummy(int x , int y, int bt,int n){
  super(60,60,x,y,random(width*0.3,width*0.7),random(height*0.2,height*0.8),0,bt,0,0,8,n,0.75);
  n_ = n;
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {

    stroke(black);
    strokeWeight(2);
    fill(blue);
    image(mummy, loc.x,loc.y, size,size);
    fill(black);
    textSize(20);
    text(hp, loc.x, loc.y);
  }
  ////////////////////////////////////////////////////////////
  void act(){
    super.act();
    vel.setMag(0);
    
    if(dist(myHero.loc.x,myHero.loc.y,loc.x,loc.y) < 300 ) buttonat = 1;
    
    countDown = countDown + 1;
    if(buttonat == 1)  vel = new PVector(-myHero.vel.x,myHero.vel.y);
        vel.setMag(speeds);
    if (buttonat == 1 && countDown > shotTimer){
    rand = random(0,100);
    if(rand < 50)   myGame.add(new Spider(roomX,roomY,1,n_));
    if (rand < 65 &&rand > 50) myGame.add(new Skeleton(roomX,roomY,1,n_));
    if (rand < 75 &&rand > 65 ) myGame.add(new SkeletonArch(roomX,roomY,1,n_));
    if (rand < 85 &&rand > 75 ) myGame.add(new Follower(roomX,roomY,1,n_));
    if (rand < 90 &&rand > 85 ) myGame.add(new Dracula(roomX,roomY,1,n_));
    if (rand <97 &&rand > 90) myGame.add(new Witch(roomX,roomY,1,n_));
    if (rand <100 &&rand > 97) myGame.add(new Mummy(roomX,roomY,1,n_));
    countDown = 0;
    }

    //========================================================================
  }
  /////////////////////////////////////////////////////////
}
//=============================================================================================================================
//============================================================================================================================
//====================================================================================================================================
class Pumpkin extends Enemy{
  int n_;
  Pumpkin(int x , int y, int bt, int n){
  super(30,60,x,y,random(width*0.4,width*0.6),random(height*0.4,height*0.6),0,bt,0,0,6,n,1.6);
  n_ = n;
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {
    stroke(black);
    strokeWeight(2);
    fill(blue);
    image(pumpkin, loc.x,loc.y, size,size);
    fill(black);
    textSize(18);
    text(hp, loc.x, loc.y);
  }
  ////////////////////////////////////////////////////////////
  void act(){
    super.act();
     if(dist(myHero.loc.x,myHero.loc.y,loc.x,loc.y) < 300 ) buttonat = 1;
    if (buttonat == 1) vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);
    vel.setMag(speeds);
    if(dist(myHero.loc.x,myHero.loc.y,loc.x,loc.y) < 210 ){
      fill(255);
      circle(loc.x,loc.y,300);
      myHero.hp = myHero.hp - 25*n_/2;
      hp = 0;
    }

  }
  /////////////////////////////////////////////////////////
}
//======================================================================================================================================
//=====================================================================================================================================
//========================================================================================================================================
class SkeletonArch extends Enemy{
  int countDown;
  int shootTimer = 45;
  int n_;
  SkeletonArch(int x , int y, int bt,int n){
  super(30,55,x,y,random(width*0.3,width*0.7),random(height*0.3,height*0.7),0,bt,0,0,5,n,1.75);
  n_ = n;
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {
    stroke(black);
    strokeWeight(2);
    fill(blue);
    image(skeletonarch, loc.x,loc.y, size,size);
    fill(black);
    textSize(18);
    text(hp, loc.x, loc.y);
  }
  ////////////////////////////////////////////////////////////
  void act(){
    super.act();
    if(dist(myHero.loc.x,myHero.loc.y,loc.x,loc.y) < 250 ) buttonat = 1;
    if (buttonat == 1) {
      vel = new PVector(-myHero.vel.x,myHero.vel.y);
      
     //=====================================================================
      countDown = countDown + 1;
      if (shootTimer < countDown){
      myGame.add(new EnemyBullet(loc.x, loc.y,10,5*n_/2,7));
      countDown = 0;
      }
   //=================================================================== 
      
    }
    vel.setMag(speeds);
    
  
    
    
  }
  /////////////////////////////////////////////////////////
}
//=============================================================================================================
//======================================================================================================================
//=======================================================================================================================
class Spider extends Enemy{
  
  Spider(int x , int y, int bt, int n){
  super(35,45,x,y,random(width*0.3,width*0.7),random(height*0.3,height*0.7),50,bt,0,7,3,n,1.7);
  
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {
    stroke(black);
    strokeWeight(2);
    fill(blue);
    image(spider, loc.x,loc.y, size,size);
    fill(black);
    textSize(18);
    text(hp, loc.x, loc.y);
  }
  ////////////////////////////////////////////////////////////
  void act(){
    super.act();
    if(dist(myHero.loc.x,myHero.loc.y,loc.x,loc.y) < 250 ) buttonat = 1;
    if (buttonat == 1) vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);
    vel.setMag(speeds);

   
          
  }

  
  

  /////////////////////////////////////////////////////////
}
//=====================================================================================================================================
//========================================================================================================================================
//======================================================================================================================================================================
class Witch extends Enemy{
  int countDown;
  int shootTimer = 300;
  int n_;
  Witch(int x , int y ,int bt, int n){
  super(35,55,x,y,random(width*0.3,width*0.7),random(height*0.3,height*0.7),0,bt,0,0,6,n,0.75);
  n_ = n;
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {
    stroke(black);
    strokeWeight(2);
    fill(blue);
    image(witch, loc.x,loc.y, size,size);
    fill(black);
    textSize(20);
    text(hp, loc.x, loc.y);
  }
  ////////////////////////////////////////////////////////////
  void act(){
    super.act();
    
   //vel.setMag(0);
    
    //=====================================================================
    if(dist(myHero.loc.x,myHero.loc.y,loc.x,loc.y) < 300 ) buttonat = 1;
      countDown = countDown + 1;
      if(buttonat == 1) vel = new PVector(-myHero.vel.x,myHero.vel.y);
      vel.setMag(speeds);
      if (shootTimer < countDown && buttonat == 1){
      myGame.add(new EnemyBullet(loc.x, loc.y,30,35*n_/2,10));
      countDown = 0;
      }
   //=================================================================== 

  }
  /////////////////////////////////////////////////////////
}
//===================================================================================================================\//===============
//=====================================================================================================================================
//=======================================================================================================================================
class Wolfman extends Enemy{
  float attackspeed = 0;
  float threshold = 100;
  Wolfman(int x , int y, int n){
  super(80,65,x,y,random(width*0.3,width*0.7),random(height*0.3,height*0.7),40,0,5,6,7,n,2);
  
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {
    stroke(black);
    strokeWeight(2);
    fill(blue);
    image(wolfman, loc.x,loc.y, size,size);
    fill(black);
    textSize(20);
    text(hp, loc.x, loc.y);
  }
  ////////////////////////////////////////////////////////////
  void act(){
    super.act();
    
    vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);
    
    vel.setMag(speeds);
////////////////////////////////////////////////  
    
///////////////////////////////////////////////////////////////
  }
  /////////////////////////////////////////////////////////
}
//==============================================================================================================================/===================
//==================================================////========================================================================
//============================================================================================================================================
