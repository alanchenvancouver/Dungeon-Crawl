class grim extends Enemy{

  grim(int x , int y){
  super(9999999,350,x,y,width/2,height/2,120,0,0,0,0,1,1);
  
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {
    stroke(black);
    strokeWeight(2);
    fill(blue);
    image(grimReaper, loc.x,loc.y, size,size);
    fill(black);
    textSize(22);
    text(hp, loc.x, loc.y);
  }
  ////////////////////////////////////////////////////////////
  void act(){
    super.act();
    
     vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);
    vel.setMag(1);

    
    
  }
  /////////////////////////////////////////////////////////
}
