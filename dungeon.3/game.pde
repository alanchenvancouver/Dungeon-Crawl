void game() {
    armour();
  drawfloor();
  drawRoom();
  drawDoor();
  drawGameObjects();
  drawLightLayer();
  drawMiniMap();
  drawLevel();
  deleteObject();

}
/////////////////////////////////////////////////////////
void drawfloor() {



  int fx = 130;
  int fy = 130;
  while (fy < height*1.9) {
    image(dfloor, fx, fy, 100, 100);
    fx = fx + 100;
    if ( fx >= width*1.9) {
      fx = 130;
      fy = fy + 100;
    }
  }
}
/////////////////////////////////////////////////////////////////////
void drawRoom() {
  //corner
  stroke(0);
  strokeWeight(4);
  // line(0,0,width,height);
  //line(width,0,0,height);
  /////////////////////////////////////////////////////////////
  //Draw exist #1
  northRoom = map.get(myHero.roomX, myHero.roomY - 1);
  eastRoom = map.get(myHero.roomX + 1, myHero.roomY);
  southRoom = map.get(myHero.roomX, myHero.roomY + 1);
  westRoom = map.get(myHero.roomX - 1, myHero.roomY);
  ///////////////////////////////////////////////////////////////

  //floor
  rectMode(CORNER);
  stroke(0);
  fill(darkred);
  noStroke();
  rect(0, 0, width*0.1, height);
  rect(0, 0, width, height*0.1);
  rect(0, height*0.9, width, height*0.9);
  rect(width*0.9, 0, width*0.1, height);
  line(width*0.1, height*0.9, width*0.9, height*0.9);
  line(width*0.9, height*0.1, width*0.9, height*0.9);
  line(width*0.1, height*0.9, width*0.1, height*0.1);
  line(width*0.1, height*0.1, width*0.9, height*0.1);





  //////////////////////////////////////////////////////////////////////////
}

//////////////////////////////////////////////////////////////

void drawGameObjects() {
  int i =0;
  while (i < myGame.size()) {
    GameObject obj = myGame.get(i);
    if (obj.roomX == myHero.roomX && obj.roomY == myHero.roomY) {
      obj.show();
      obj.act();
      if (obj.hp <= 0) {
        myGame.remove(i);
      } else {
        i++;
      }
    } else {
      i++;
    }
    /////////////////////////////////////////////////////////////////////
  }
    ///////////////////////////////////////////////////////
  }
  /////////////////////////////////////////////////////////////////////

  void drawDoor() {
    //  //Draw exist #2
    noStroke();
    fill(0);
    rectMode(CENTER);
    if (northRoom != #FFFFFF) rect(width/2, height*0.1 - 35, 100, 70, 20, 20, 0, 0);
    if (eastRoom != #FFFFFF) rect(width *0.9 + 35, height/2, 70, 100, 0, 20, 20, 0);
    if (southRoom != #FFFFFF) rect(width /2, height*0.9 + 35, 100, 70, 0, 0, 20, 20);
    if (westRoom != #FFFFFF) rect(width *0.1 - 35, height/2, 70, 100, 20, 0, 0, 20);
  }




  //////////////////////////////////////////////////////////////
  void drawLightLayer() {
    /////////////////////////////////////////////////////////////////////////
    int k =0;
    while (k < dark.size()) {
      Darkness d = dark.get(k);
      d.show();
      k++;
    }

    //////////////////////////////////////////////////////
  }

  ///////////////////////////////////////////////////////////////////////////////////////////
  void drawMiniMap() {
    //  image(map,50,45,80,80);
    float size = 10;
    int x = 0;
    int y =0;
    while (y < map.height) {
      color c = map.get(x, y);
      if (x == myHero.roomX && y == myHero.roomY) fill(purple);
      else {
        fill(c);
      }
      square(x*8 + 20, y*8 + 20, size);
      x = x + 1;
      if ( x >= map.width) {
        x = 0;
        y = y + 1;
      }
    }
  }
  //====================================================================================
  void drawLevel(){
    textSize(22);
    fill(red);
    rect (width - 100, 20, 160,20);
    fill(0);
    text(myHero.hp + "  /  " + Maximumhp, width - 100,20);
    
     fill(green);
    rect (width - 100,45, 160,20);
    fill(0);
    text(ex + "  /  " + exshow, width - 100,45);
    
    image(avatar, width - 218, 25, 50,50);
    fill(purple);
    textSize(18);
    text("LEVEL " + Level,width - 215, 60);
    
    
    
    
    
    
    
  }
  /////////////////////////////////////////////////////////////////////////////////////////  
  void deleteObject() {

    int i =0;
    while (i < myGame.size()) {
      GameObject k = myGame.get(i);


      if (myGame.get(i).hp == 0 ) {
        myGame.remove(i);
      } 
      else if    (myHero.hp <= 0) {
        myGame.remove(i);
        mode = over;
      }
      else {
        i++;
      }
}

//======================================================================
  }

  
  void armour(){
  if (mousePressed && mouseY > 0 && mouseY < 75 && mouseX > width - 243 && mouseX < width - 193) mode = pause;
  
  }
  
  
  
