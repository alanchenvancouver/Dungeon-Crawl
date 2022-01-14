int myweapons;
int point = 0;
class Hero extends GameObject{
  float speed ;
  int hpplus = 0;
  int myKnight;
  Weapon myWeapon;
  ////////////////////////////////////////////////////////////////
  Hero(){
  super();
  hp = 60;
  roomX = 1;
  roomY = 1;
  size = 40;
  myWeapon = new AutoPistol();
  myweapons = 2;
  myKnight = 1;
  }
 ////////////////////////////////////////////////////////////////// 
  void show(){
  if(myKnight == 1)kUp.show(loc.x,loc.y,size*1.15,size*1.5);
  if(myKnight == 2)kDown.show(loc.x,loc.y,size*1.15,size*1.5);
  if(myKnight == 3)kRight.show(loc.x,loc.y,size*1.15,size*1.5);
  if(myKnight == 4)kLeft.show(loc.x,loc.y,size*1.15,size*1.5);
  }
  ////////////////////////////////////////////////////////////////////////
  void act(){

    //=========================================================================
    super.act();
    if(Level == 1) {
      Maximumhp = 60;
      speed = 2.5;
      exshow = 5;
    }

    if (hp > Maximumhp) hp = Maximumhp;

    if(ex >= 5  && ex < 15) Level = 2;
    if(Level >= 2){
      exshow = 15;
      if (hpplus == 0){
        point = point + 3;
        hpplus++;
      }
    }
    
    if(ex >= 15  && ex < 30) Level = 3;
    if(Level >= 3) {
      exshow = 30;
     if (hpplus == 1){
        point = point + 3;
        hpplus++;
      }
    }
    
    if(ex >= 30 && ex < 50) Level = 4;
    if(Level >= 4) {

    exshow = 50;
    
    if (hpplus == 2){
        point = point + 4;
        hpplus++;
      }
      
    }
    
    if(ex >= 50 && ex < 100) Level = 5;
    if(Level >= 5) {
      exshow = 100;
      if (hpplus == 3){
        point = point + 4;
        hpplus++;
      }
    }
    
    if(ex >= 100 && ex < 250) Level = 6;
    if(Level >= 6) {
     exshow = 250;
     if (hpplus == 4){
        point = point + 5;
        hpplus++;
      }
    }
    
    if(ex >= 250 && ex < 500) Level = 7;
    if(Level >= 7){
    exshow = 500;
    if (hpplus == 5){
        point = point + 5;
        hpplus++;
      }
    }
    
     if(ex >= 500 && ex < 1000) Level = 8;
    if(Level >= 8) {
      exshow = 1000;
      if (hpplus == 6){
        point = point + 6;
        hpplus++;
      }
    }
    
    if(ex >= 1000 && ex < 2000) Level = 9;
    if(Level == 9){
      exshow = 2000;
        if (hpplus == 7){
        point = point + 7;
        hpplus++;
      }
    }
    
    if(ex >= 2000 && ex < 2500) Level = 10;
    if(Level == 10) {
    exshow = 2500;
    if (hpplus == 8){
        point = point + 9;
        hpplus++;
      }
    }
    
     if(ex >= 2500 && ex < 5000) Level = 11;
    if(Level == 11) {
    exshow = 5000;
    if (hpplus == 9){
        point = point + 10;
        hpplus++;
      }
    }
    
     if(ex >= 5000 && ex < 8000) Level = 12;
    if(Level == 12) {
    exshow = 8000;
    if (hpplus == 10){
          point = point + 12;
        hpplus++;
      }
    }
    
    
         if(ex >= 8000 && ex < 12000) Level = 13;
    if(Level == 13) {
    exshow = 12000;
    if (hpplus == 11){
          point = point + 14;
        hpplus++;
      }
    }
    
             if(ex >= 12000 && ex < 16000) Level = 14;
    if(Level == 14) {
    exshow = 16000;
    if (hpplus == 12){
          point = point + 16;
        hpplus++;
      }
    }
    
                 if(ex >= 16000 && ex < 20000) Level = 15;
    if(Level == 15) {
    exshow = 20000;
    if (hpplus == 13){
          point = point + 18;
        hpplus++;
      }
    }
    
                     if(ex >= 20000 && ex < 25000) Level = 16;
    if(Level == 16) {
    exshow = 25000;
    if (hpplus == 14){
          point = point + 20;
        hpplus++;
      }
    }
    
    

  
   if (up )vel.y = -speed; 
     if (up && roomX == 4 && roomY == 8)vel.y = -speed +2.2; 
   /////////////////////////////////////////////////////////////////////
   if (down )vel.y = speed; 
      if (down && roomX == 4 && roomY == 8)vel.y = speed -2.2; 
   ////////////////////////////////////////////////////////////////////
    if (left )vel.x = -speed; 
       if (left && roomX == 4 && roomY == 8)vel.x = -speed + 2.2; 
    
    /////////////////////////////////////////////////////////////////
    if (right )vel.x = speed; 
        if (right && roomX == 4 && roomY == 8)vel.x = speed - 2.2;
    
    /////////////////////////////////////////////////////////////////////////
   
   myWeapon.update();
  if(space) myWeapon.shoot();


    ///////////////////////////////////////////////////////
    if (vel.mag() > speed && roomX != 4 && roomY != 8) vel.setMag(speed);
    if (vel.mag() > speed && roomX == 4 && roomY == 8) vel.setMag(speed - 2.5);
    ///////////////////////////////////////////////////
    if(!up && !down) vel.y = vel.y * 0.75;
    if(!left && !right) vel.x = vel.x * 0.75;
    //////////////////////////////////////////////////
    if(abs(vel.y) > abs(vel.x)){
    if (vel.y > 0) myKnight = 1;
    else myKnight = 2;
    }else{
      if(vel.x > 0) myKnight = 3;
      else myKnight = 4;
    }
    
    //============================================================================
    if(northRoom != #FFFFFF && loc.y == height * 0.1 && loc.x < width/2 +50 &&  loc.x > width/2 - 50){
      roomY--;
      loc = new PVector (width/2,height*0.9 -10);
    } 
   if(southRoom != #FFFFFF && loc.y == height * 0.9 && loc.x < width/2 +50 &&  loc.x > width/2 - 50){
      roomY++;
      loc = new PVector (width/2,height*0.1 +10);
    } 
  if(westRoom != #FFFFFF && loc.x == width * 0.1 && loc.y < height/2 +50 &&  loc.y > height/2 - 50){
      roomX--;
      loc = new PVector (width*0.9 -10,height/2);
    } 
  if(eastRoom != #FFFFFF && loc.x == width * 0.9 && loc.y < height/2 +50 &&  loc.y > height/2 - 50){
      roomX++;
      loc = new PVector (width*0.1 + 10,height/2);
    } 
  ///////////////////////////////////////////////////////////////////////
  
  int  i  = 0;
  while(i < myGame.size()){
    
    
    
    //=============================================================
  GameObject myObj = myGame.get(i);
  if ( myObj instanceof DroppedItem ){
    DroppedItem item = (DroppedItem) myObj;
  if(item.type == GUN && dist(loc.x,loc.y,myObj.loc.x,myObj.loc.y) < 22 && myObj.roomX == myHero.roomX && myObj.roomY == myHero.roomY){
  myWeapon  =  item.w;
  myweapons = item.weapon;
  item.hp = 0;
  }
  if(item.type == HEALTH && dist(loc.x,loc.y,myObj.loc.x,myObj.loc.y) < 22 && roomX == item.roomX && roomY == item.roomY){
  hp = hp + Maximumhp/4;
  item.hp = 0;
  }
  }
  




  i++;
  }
  

  }
}
