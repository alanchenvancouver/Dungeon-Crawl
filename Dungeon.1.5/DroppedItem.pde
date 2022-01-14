class DroppedItem extends GameObject {

  int type;
  int weapon;
  Weapon w;

  DroppedItem(float x, float y, int rx, int ry, int typ, int wea) {
    type = typ;
    weapon = wea;


    // w = new ShotGun();
    // w = new  AutoPistol();


    hp = 1;
    loc = new PVector (x, y);
    vel = new PVector(0, 0);
    size = 20;
    roomX = rx;
    roomY = ry;
    c = yellow;
  }

  void show() {
    stroke(black);
    strokeWeight(2);
    if (type == HEALTH) image(Potion, loc.x, loc.y, size*1.8, size*1.8);

    //============================================================
    if (type == GUN && weapon == 1) {
      image(shotgun, loc.x, loc.y, size*2.5, size*1.6); 
      w = new ShotGun();
    }
    if (type == GUN && weapon == 2) {
      image(autopistol, loc.x, loc.y, size*2.5, size*1.6); 
      w = new AutoPistol();
    }
    
    
    if (type == GUN && weapon == 3) {
      w = new SniperRifle();
      image(sniper, loc.x, loc.y, size*2.5, size*1.6);
    }
    
        if (type == GUN && weapon == 4) {
      w = new Staff();
      image(staff, loc.x, loc.y, size*2.5, size*1.6);
    }
    
  if (type == GUN && weapon == 5) {
      w = new Fire();
      image(fire, loc.x, loc.y, size*2.5, size*1.6);
    }
    
  }
  //============================================================ 
  void act() {
  }
  //============================================================
}
