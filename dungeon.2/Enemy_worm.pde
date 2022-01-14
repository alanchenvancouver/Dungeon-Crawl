class Worm extends Enemy{

  Worm(){
  super(1,50,6,4,random(width*0.1,width*0.9),random(height*0.1,height*0.9),90,1,0,15,1,2,0.5);
  
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {

    stroke(black);
    strokeWeight(2);
    fill(blue);
    image(worm, loc.x,loc.y, size,size);
    fill(black);
    //textSize(20);
    //text(hp, loc.x, loc.y);
  }
  ////////////////////////////////////////////////////////////
  void act(){
    super.act();
    if(dist(myHero.loc.x,myHero.loc.y,loc.x,loc.y) < 250 ) buttonat = 1;
    if (buttonat == 1) vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);

    
    vel.setMag(2.1);
    

  }
  /////////////////////////////////////////////////////////
}
