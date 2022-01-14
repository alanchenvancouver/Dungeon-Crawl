class deathKnight extends Enemy{
  int u = 0;
   int countDown;
  int shotTimer = 600;
  deathKnight(int x , int y){
  super(1200,200,x,y,width/2,height/2,90,0,0,70,500,2,0);
  
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {
    stroke(black);
    strokeWeight(2);
    fill(blue);
    image(deathknight, loc.x,loc.y, size,size);
    fill(black);
    textSize(22);
    text(hp, loc.x, loc.y);
  }
  ////////////////////////////////////////////////////////////
  void act(){
    super.act();
    
    vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);
    vel.setMag(1.25);
    
      countDown = countDown + 1;
 if (countDown > shotTimer){
   fill(white);
     circle(loc.x,loc.y,500);
     if(dist(loc.x,loc.y,myHero.loc.x,myHero.loc.y) < 250) myHero.hp = myHero.hp - 35;
    countDown = 0;
    }
    
    if (u == 0 && hp <=  700){ 
    myGame.add(new Tower(1));
    myGame.add(new Tower(1));
    myGame.add(new Tower(1));
    myGame.add(new Tower(1));
    myGame.add(new Tower(1));
    myGame.add(new Tower(1));
    u = 1; 
    }
    
    
    
    

    
  }
  /////////////////////////////////////////////////////////
}
