class Zombie2 extends Enemy{
  int u = 0;
  Zombie2(int x , int y){
  super(1600,160,x,y,width/2 + 200,height/2 + 200,120,0,0,60,650,2,0);
  
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {
    stroke(black);
    strokeWeight(2);
    fill(blue);
    image(zombie2, loc.x,loc.y, size,size);
    fill(black);
    textSize(22);
    text(hp, loc.x, loc.y);
  }
  ////////////////////////////////////////////////////////////
  void act(){
    super.act();
    
    vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);
    vel.setMag(1.4);
    
    
  }
}
