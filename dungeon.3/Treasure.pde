class treasure extends Enemy{
float rando;
  treasure(int x , int y, int bt){
  super(50,80,x,y,width/2,height/2,0,bt,0,0,0,2,0);
  
  }
  ///////////////////////////////////////////////////////////////////////
   void show() {
    stroke(black);
    strokeWeight(2);
    fill(blue);
    image(Treasure, loc.x,loc.y, size*1.3,size);
    fill(black);
    textSize(20);
    text(hp, loc.x, loc.y);
  }
  ////////////////////////////////////////////////////////////
  void act(){
    super.act();
    if(hp <= 0){
      rando = random(0,100);
      if (rando  < 25)myGame.add(new DroppedItem(loc.x, loc.y, roomX, roomY,2,3));

      if(rando > 25 && rando < 50) myGame.add(new DroppedItem(loc.x, loc.y, roomX, roomY,2,1));

      if (rando > 50 && rando < 75)myGame.add(new DroppedItem(loc.x, loc.y, roomX, roomY,2,4));
      if (rando > 75)myGame.add(new DroppedItem(loc.x, loc.y, roomX, roomY,2,5));
    }
  }
  /////////////////////////////////////////////////////////
}
