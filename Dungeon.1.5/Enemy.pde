 
class Enemy extends GameObject {
  float attackspeed = 0;
  float threshold = 999999;
  int buttonat;
  int healt;
  float damages;
  float rando = random(0,100);
  float speeds;


  Enemy() {
    loc = new PVector(width/2, height/2);
    vel = new PVector (0, 0);
    hp = 100;
    size = 50;
    roomX = 1;
    roomY = 1;
  }

  Enemy(int _hp, int s, int x, int y, float locx, float locy, float thr, int bt, int heal, float damagess, int e ,int n, float spd) {
    //e is the experience the enmy drops;
    
    loc = new PVector(locx, locy);
    vel = new PVector (0, 0);
    hp = _hp * n/2;
    size = s;
    roomX = x;
    roomY = y;
    threshold = thr;
    buttonat = bt;
    healt = heal*n/2;
    em = e * (n - 1);
    damages = damagess*n/2;
    speeds = spd+ spd*(n-2)/5;
  }










  ////////////////////////////////////////////////////
  void show() {
     rando = random(0,100);
    stroke(black);
    strokeWeight(2);
    fill(green);
    circle(loc.x, loc.y, size);
    fill(black);
    textSize(20);
    text(hp, loc.x, loc.y);
    
    

    
    
  }

  //////////////////////////////////////////////////////////////////
  void act() {
    super.act();
    int i =0;
    
    
    
    
    while (i < myGame.size()) {
      GameObject obj = myGame.get(i);

       if ( obj instanceof Bullet) {
        float d = dist(obj.loc.x, obj.loc.y, loc.x, loc.y);
        if (d <= size/2 + obj.size/2 && obj.roomX == myHero.roomX && obj.roomY == myHero.roomY ) {
          hp = hp -obj.damage;
          buttonat = 1;
          obj.hp = 0;
          //===========================================================
          if (hp <= 0) {
            println(rando);
            myGame.add(new Message("ex + ",em));
            if(rando > 95) myGame.add(new DroppedItem(loc.x, loc.y, roomX, roomY, 1, 0));
            ex = ex + em;
            textSize(100);
            fill(white);

          }

          //================================================================
        }
        
        if (d <= size/2 + obj.size/2 +80) buttonat = 1;
        
      }
      i++;
    }
    /////////////////////////////////////////////////////////////////////////////// 

    //=============================================================================================
    attackspeed = attackspeed + 1;
    if (attackspeed >= threshold && dist(myHero.loc.x, myHero.loc.y, loc.x, loc.y) < 19 + size/2 ) {
      attackspeed = 0;
      myHero.hp = myHero.hp - damages;
      hp = hp + healt;
    }
    //////////////////////////////////////////////////////////////////////////////////
  }
  ////////////////////////////////////////////////////////////
}
