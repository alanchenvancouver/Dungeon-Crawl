final int intro = 0;
final int game = 1;
final int pause = 2;
final int pausez = 3;
final int over = 4;
final int done = 5;
int mode;
///////////////////////////////////////////////////////////
AnimatedGIF myGIF,kUp,kDown,kLeft,kRight;
Button mybutton;
Button buttonh;
Button buttons;
Button buttona;
Button buttond;
Button again;

//=============================================================
final int Artifact = 0;
final int HEALTH = 1;
final int GUN = 2;
//=====================================================================
int Maximumhp = 0;
int Level = 1;
float attack = 1;
int ex = 0;
int exshow;

/////////////////////////////////////////////////////////////negative

//===========================================================
color purple = #E71AE8;
color darkred = #AA3521;
color brown = #DEA919;
color blue   = #28E7ED;
color green  = #CEF255;
color pink   = #F76DDC;
color yellow = #FFF387;
color yelloww = #E3CE17;
color black  = #000000;
color black1 = #000001;
color black2 = #000002;
color black3 = #000003;
color black4 = #000004;
color white  = #FFFFFF;
color red = #FA2828;
///////////////////////////////////////////////////////
ArrayList<GameObject> myGame;
ArrayList<Darkness> dark;
Hero myHero;
deathKnight solomonDK;
Zombie1 solomonZ1;

/////////////////////////////////////////////////////////////
boolean up, down, left, right, space;
boolean mouseReleased;
boolean wasPressed;
///////////////////////////////////////////////////////////////
PImage map,dfloor,avatar;
PImage Potion, Treasure;
PImage shotgun, sniper,autopistol,staff,fire;
PImage tower,worm;
PImage zombie,skeleton,dracula,skeletonarch,spider,slime,dryad,mummy,witch,wolfman,ghost,pumpkin;
PImage deathknight,zombie1,zombie2,crew,queen;
PImage grimReaper,mickey;
color northRoom, eastRoom, southRoom, westRoom;

void setup(){
  size(1200,800,FX2D);
  textAlign(CENTER,CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  /////////////////////////////////////////
  myGame = new ArrayList<GameObject>(1000);
  myHero = new Hero();
  myGame.add(myHero);
  
  solomonDK = new deathKnight(3,3);
  myGame.add(solomonDK);
  //myGame.add(new Enemy());

 // myGame.add(new Mickey(3,3));

 myGame.add(new crewDoctor(4,6));
 solomonZ1 = new Zombie1(6,4);
 myGame.add(solomonZ1);
  myGame.add(new Zombie2(6,4));
    myGame.add(new SpiderQueen(4,8));
  //myGame.add(new grim(8,1));
  ///////////////////////////////////////
  dark = new ArrayList<Darkness>();
  float size = 50;
   int x = 0;
   int y =0;

 dark.add(new Darkness(x,y,size));

  //////////////////////////////////////////

  mode = intro;
  //====================================================================

  
//////////////////////////////////////////////////////////////
 mybutton  = new Button("Start",  width/2, height/2 + 200, 200, 100, blue,  pink, 50);
  buttonh  = new Button("+",  width/2 + 105, height/2 -15 , 30, 30, yellow,  red, 20);
  buttons  = new Button("+",  width/2 + 105, height/2 -50 , 30, 30, yellow,  red , 20);
  buttona  = new Button("+",  width/2 + 105, height/2 -85 , 30, 30, yellow,  red , 20);
  buttond  = new Button("+",  width/2 + 105, height/2 -120 , 30, 30, yellow, red , 20);
  again = new Button("AGAIN!",  width/2, height/2 +120 , 120, 60, yellow, red , 20);
 /////////////////////////////////////////////////////////////
 myGIF = new AnimatedGIF(58, 5,"frame_","_delay-0.1s.gif");
 kUp = new AnimatedGIF(3,12, "knight/up/up",".png");
 kDown = new AnimatedGIF(3,12, "knight/down/down",".png");
 kLeft = new AnimatedGIF(3,12, "knight/left/left",".png");
 kRight = new AnimatedGIF(3,12, "knight/right/right",".png");
 
 ////////////////////////////////////////////////////////////////
 //load image
     map = loadImage("map.png");
    dfloor = loadImage("dungeonfloor.jpg");
    avatar = loadImage("avatar.png");
    Potion = loadImage("Potion.png");
    zombie = loadImage("zombie.png");
    skeleton = loadImage("skeleton.png");
    deathknight = loadImage("deathknight.png");
    crew = loadImage("crew.png");
    dracula = loadImage("dracula.png");
    slime = loadImage("slime.png");
    skeletonarch = loadImage("skeletonarch.png");
    spider = loadImage("spider.png");
    zombie1 = loadImage("zombiebro1.png");
    zombie2 = loadImage("zombiebro2.png");
    grimReaper = loadImage("grimreaper.png");
    dryad = loadImage("dryad.png");
    mummy = loadImage("mummy.png");
    witch = loadImage("witch.png");
    wolfman = loadImage("wolfman.png");
    ghost = loadImage("ghost.png");
    pumpkin = loadImage("pumpkin.png");
    mickey = loadImage("mickey.jpg");
    tower = loadImage("tower.png");
    worm = loadImage("worm.png");
    queen = loadImage("Queenspider.png");
//================================================================    
    shotgun = loadImage("shotgun.png");
    sniper = loadImage("sniper.png");
    autopistol = loadImage("autopistol.png");
    staff = loadImage("staff.png");
    fire = loadImage("fire.png");
   Treasure = loadImage("treasurebox.png");
 
 
    while (y < map.height) {
    color roomColor = map.get(x,y);
//===================================================================================
    if(roomColor == black) {
      int s = 0;
      while (s < 6){
       float randomene;
       randomene = random(0,100);
  if (randomene < 12)    myGame.add(new Follower(x,y,0,2));
  if (randomene > 12 && randomene < 25) myGame.add(new Skeleton(x,y,0,2));
    if (randomene > 25 && randomene < 33) myGame.add(new Dracula(x,y,0,2));
    if (randomene > 33 && randomene < 44) myGame.add(new Slime(x,y,60,50,0,2));
    if (randomene > 44 && randomene < 54)myGame.add(new SkeletonArch(x,y,0,2));
    if (randomene > 54 && randomene < 67)myGame.add(new Spider(x,y,0,2));
    if (randomene > 67 && randomene < 71) myGame.add(new Dryad(x,y,0,2));
    if (randomene > 71 && randomene < 74) myGame.add(new Mummy(x,y,0,2));
    if (randomene > 74 && randomene < 79)myGame.add(new Witch(x,y,0,2));
    if (randomene > 79 && randomene < 86) myGame.add(new Ghost(x,y,0,2));
    if (randomene > 86 && randomene < 94)myGame.add(new Wolfman(x,y,2)); 
        if (randomene > 94) myGame.add(new Pumpkin(x,y,0,2)); 
    s++;
      }
       }
  //============================================================================
      if(roomColor == black1) {
      int s = 0;
      while (s < 8){
       float randomene;
       randomene = random(0,100);
  if (randomene < 12)    myGame.add(new Follower(x,y,0,3));
  if (randomene > 12 && randomene < 25) myGame.add(new Skeleton(x,y,0,3));
    if (randomene > 25 && randomene < 33) myGame.add(new Dracula(x,y,0,3));
    if (randomene > 33 && randomene < 44) myGame.add(new Slime(x,y,60,50,0,3));
    if (randomene > 44 && randomene < 54)myGame.add(new SkeletonArch(x,y,0,3));
    if (randomene > 54 && randomene < 67)myGame.add(new Spider(x,y,0,3));
    if (randomene > 67 && randomene < 71) myGame.add(new Dryad(x,y,0,3));
    if (randomene > 71 && randomene < 74) myGame.add(new Mummy(x,y,0,3));
    if (randomene > 74 && randomene < 79)myGame.add(new Witch(x,y,0,3));
    if (randomene > 79 && randomene < 86) myGame.add(new Ghost(x,y,0,3));
    if (randomene > 86 && randomene < 94)myGame.add(new Wolfman(x,y,3)); 
        if (randomene > 94) myGame.add(new Pumpkin(x,y,0,3)); 
    s++;
      }
       }
  //===============================================================================
      if(roomColor == black2) {
      int s = 0;
      while (s < 10){
       float randomene;
       randomene = random(0,100);
  if (randomene < 12)    myGame.add(new Follower(x,y,0,4));
  if (randomene > 12 && randomene < 25) myGame.add(new Skeleton(x,y,0,4));
    if (randomene > 25 && randomene < 33) myGame.add(new Dracula(x,y,0,4));
    if (randomene > 33 && randomene < 44) myGame.add(new Slime(x,y,60,50,0,4));
    if (randomene > 44 && randomene < 54)myGame.add(new SkeletonArch(x,y,0,4));
    if (randomene > 54 && randomene < 67)myGame.add(new Spider(x,y,0,4));
    if (randomene > 67 && randomene < 71) myGame.add(new Dryad(x,y,0,4));
    if (randomene > 71 && randomene < 74) myGame.add(new Mummy(x,y,0,4));
    if (randomene > 74 && randomene < 79)myGame.add(new Witch(x,y,0,4));
    if (randomene > 79 && randomene < 86) myGame.add(new Ghost(x,y,0,4));
    if (randomene > 86 && randomene < 94)myGame.add(new Wolfman(x,y,4)); 
        if (randomene > 94) myGame.add(new Pumpkin(x,y,0,4)); 
    s++;
      }
       }
  //===============================================================================
      if(roomColor == black3) {
      int s = 0;
      while (s < 14){
       float randomene;
       randomene = random(0,100);
  if (randomene < 12)    myGame.add(new Follower(x,y,0,5));
  if (randomene > 12 && randomene < 25) myGame.add(new Skeleton(x,y,0,5));
    if (randomene > 25 && randomene < 33) myGame.add(new Dracula(x,y,0,5));
    if (randomene > 33 && randomene < 44) myGame.add(new Slime(x,y,60,50,0,5));
    if (randomene > 44 && randomene < 54)myGame.add(new SkeletonArch(x,y,0,5));
    if (randomene > 54 && randomene < 67)myGame.add(new Spider(x,y,0,5));
    if (randomene > 67 && randomene < 71) myGame.add(new Dryad(x,y,0,5));
    if (randomene > 71 && randomene < 74) myGame.add(new Mummy(x,y,0,5));
    if (randomene > 74 && randomene < 79)myGame.add(new Witch(x,y,0,5));
    if (randomene > 79 && randomene < 86) myGame.add(new Ghost(x,y,0,5));
    if (randomene > 86 && randomene < 94)myGame.add(new Wolfman(x,y,5)); 
        if (randomene > 94) myGame.add(new Pumpkin(x,y,0,5)); 
    s++;
      }
       }
       //========================================================================
           if(roomColor == black4) {
      int s = 0;
      while (s < 20){
       float randomene;
       randomene = random(0,100);
  if (randomene < 12)    myGame.add(new Follower(x,y,0,6));
  if (randomene > 12 && randomene < 25) myGame.add(new Skeleton(x,y,0,6));
    if (randomene > 25 && randomene < 33) myGame.add(new Dracula(x,y,0,6));
    if (randomene > 33 && randomene < 44) myGame.add(new Slime(x,y,60,50,0,6));
    if (randomene > 44 && randomene < 54)myGame.add(new SkeletonArch(x,y,0,6));
    if (randomene > 54 && randomene < 67)myGame.add(new Spider(x,y,0,6));
    if (randomene > 67 && randomene < 71) myGame.add(new Dryad(x,y,0,6));
    if (randomene > 71 && randomene < 74) myGame.add(new Mummy(x,y,0,6));
    if (randomene > 74 && randomene < 79)myGame.add(new Witch(x,y,0,6));
    if (randomene > 79 && randomene < 86) myGame.add(new Ghost(x,y,0,6));
    if (randomene > 86 && randomene < 94)myGame.add(new Wolfman(x,y,6)); 
    if (randomene > 94) myGame.add(new Pumpkin(x,y,0,6)); 
    s++;
      }
       }
       //======================================================================================
      if(roomColor == yelloww) {
       myGame.add(new treasure(x,y,0));
       }
  //==============================================================================
  
    x++;
    if(x == map.width){
       x = 0;
      y++;     
    }

  }
    
  //=====================================================================  

  
  
  
  
  
}
//////////////////////////////////////////////////////////////
void draw(){
  if(mode == intro) intro();
  else if (mode == game) game();
  else if (mode == pause) pause();
  else if (mode == pausez) pausez();
  else if (mode == over) over();
  else if (mode == done) done();
  //////////////////////////////////////////////////////////
  click();
  if (mybutton.clicked && mode == intro) mode = game ; 

  if(myHero.roomX == 1 && myHero.roomY == 7) mode = done;
    if (mousePressed && mode == over) {
     mode = intro;
     myHero = new Hero();
     myGame.add(myHero);
       Level = 1;
       ex = 0;
       point = 0;
       attack = 1;
       myHero.hp = 60;
       myHero.speed = 2.5;
       //===================================================
solomonDK = new deathKnight(3,3);
  myGame.add(solomonDK);
  //myGame.add(new Enemy());

 // myGame.add(new Mickey(3,3));

 myGame.add(new crewDoctor(4,6));
 solomonZ1 = new Zombie1(6,4);
 myGame.add(solomonZ1);
  myGame.add(new Zombie2(6,4));
    myGame.add(new SpiderQueen(4,8));
    //==================================================
     myHero.roomX = 1;
     myHero.roomY = 1;
     myHero.loc.x = width/2;
     myHero.loc.y = height/2;
     //=======================================================================
     int x=0;
     int y=0;
         while (y < map.height) {
    color roomColor = map.get(x,y);
//===================================================================================
    if(roomColor == black) {
      int s = 0;
      while (s < 6){
       float randomene;
       randomene = random(0,100);
  if (randomene < 12)    myGame.add(new Follower(x,y,0,2));
  if (randomene > 12 && randomene < 25) myGame.add(new Skeleton(x,y,0,2));
    if (randomene > 25 && randomene < 33) myGame.add(new Dracula(x,y,0,2));
    if (randomene > 33 && randomene < 44) myGame.add(new Slime(x,y,60,50,0,2));
    if (randomene > 44 && randomene < 54)myGame.add(new SkeletonArch(x,y,0,2));
    if (randomene > 54 && randomene < 67)myGame.add(new Spider(x,y,0,2));
    if (randomene > 67 && randomene < 71) myGame.add(new Dryad(x,y,0,2));
    if (randomene > 71 && randomene < 74) myGame.add(new Mummy(x,y,0,2));
    if (randomene > 74 && randomene < 79)myGame.add(new Witch(x,y,0,2));
    if (randomene > 79 && randomene < 86) myGame.add(new Ghost(x,y,0,2));
    if (randomene > 86 && randomene < 94)myGame.add(new Wolfman(x,y,2)); 
        if (randomene > 94) myGame.add(new Pumpkin(x,y,0,2)); 
    s++;
      }
       }
  //============================================================================
      if(roomColor == black1) {
      int s = 0;
      while (s < 8){
       float randomene;
       randomene = random(0,100);
  if (randomene < 12)    myGame.add(new Follower(x,y,0,3));
  if (randomene > 12 && randomene < 25) myGame.add(new Skeleton(x,y,0,3));
    if (randomene > 25 && randomene < 33) myGame.add(new Dracula(x,y,0,3));
    if (randomene > 33 && randomene < 44) myGame.add(new Slime(x,y,60,50,0,3));
    if (randomene > 44 && randomene < 54)myGame.add(new SkeletonArch(x,y,0,3));
    if (randomene > 54 && randomene < 67)myGame.add(new Spider(x,y,0,3));
    if (randomene > 67 && randomene < 71) myGame.add(new Dryad(x,y,0,3));
    if (randomene > 71 && randomene < 74) myGame.add(new Mummy(x,y,0,3));
    if (randomene > 74 && randomene < 79)myGame.add(new Witch(x,y,0,3));
    if (randomene > 79 && randomene < 86) myGame.add(new Ghost(x,y,0,3));
    if (randomene > 86 && randomene < 94)myGame.add(new Wolfman(x,y,3)); 
        if (randomene > 94) myGame.add(new Pumpkin(x,y,0,3)); 
    s++;
      }
       }
  //===============================================================================
      if(roomColor == black2) {
      int s = 0;
      while (s < 10){
       float randomene;
       randomene = random(0,100);
  if (randomene < 12)    myGame.add(new Follower(x,y,0,4));
  if (randomene > 12 && randomene < 25) myGame.add(new Skeleton(x,y,0,4));
    if (randomene > 25 && randomene < 33) myGame.add(new Dracula(x,y,0,4));
    if (randomene > 33 && randomene < 44) myGame.add(new Slime(x,y,60,50,0,4));
    if (randomene > 44 && randomene < 54)myGame.add(new SkeletonArch(x,y,0,4));
    if (randomene > 54 && randomene < 67)myGame.add(new Spider(x,y,0,4));
    if (randomene > 67 && randomene < 71) myGame.add(new Dryad(x,y,0,4));
    if (randomene > 71 && randomene < 74) myGame.add(new Mummy(x,y,0,4));
    if (randomene > 74 && randomene < 79)myGame.add(new Witch(x,y,0,4));
    if (randomene > 79 && randomene < 86) myGame.add(new Ghost(x,y,0,4));
    if (randomene > 86 && randomene < 94)myGame.add(new Wolfman(x,y,4)); 
        if (randomene > 94) myGame.add(new Pumpkin(x,y,0,4)); 
    s++;
      }
       }
  //===============================================================================
      if(roomColor == black3) {
      int s = 0;
      while (s < 14){
       float randomene;
       randomene = random(0,100);
  if (randomene < 12)    myGame.add(new Follower(x,y,0,5));
  if (randomene > 12 && randomene < 25) myGame.add(new Skeleton(x,y,0,5));
    if (randomene > 25 && randomene < 33) myGame.add(new Dracula(x,y,0,5));
    if (randomene > 33 && randomene < 44) myGame.add(new Slime(x,y,60,50,0,5));
    if (randomene > 44 && randomene < 54)myGame.add(new SkeletonArch(x,y,0,5));
    if (randomene > 54 && randomene < 67)myGame.add(new Spider(x,y,0,5));
    if (randomene > 67 && randomene < 71) myGame.add(new Dryad(x,y,0,5));
    if (randomene > 71 && randomene < 74) myGame.add(new Mummy(x,y,0,5));
    if (randomene > 74 && randomene < 79)myGame.add(new Witch(x,y,0,5));
    if (randomene > 79 && randomene < 86) myGame.add(new Ghost(x,y,0,5));
    if (randomene > 86 && randomene < 94)myGame.add(new Wolfman(x,y,5)); 
        if (randomene > 94) myGame.add(new Pumpkin(x,y,0,5)); 
    s++;
      }
       }
       //========================================================================
           if(roomColor == black4) {
      int s = 0;
      while (s < 20){
       float randomene;
       randomene = random(0,100);
  if (randomene < 12)    myGame.add(new Follower(x,y,0,6));
  if (randomene > 12 && randomene < 25) myGame.add(new Skeleton(x,y,0,6));
    if (randomene > 25 && randomene < 33) myGame.add(new Dracula(x,y,0,6));
    if (randomene > 33 && randomene < 44) myGame.add(new Slime(x,y,60,50,0,6));
    if (randomene > 44 && randomene < 54)myGame.add(new SkeletonArch(x,y,0,6));
    if (randomene > 54 && randomene < 67)myGame.add(new Spider(x,y,0,6));
    if (randomene > 67 && randomene < 71) myGame.add(new Dryad(x,y,0,6));
    if (randomene > 71 && randomene < 74) myGame.add(new Mummy(x,y,0,6));
    if (randomene > 74 && randomene < 79)myGame.add(new Witch(x,y,0,6));
    if (randomene > 79 && randomene < 86) myGame.add(new Ghost(x,y,0,6));
    if (randomene > 86 && randomene < 94)myGame.add(new Wolfman(x,y,6)); 
    if (randomene > 94) myGame.add(new Pumpkin(x,y,0,6)); 
    s++;
      }
       }
       //======================================================================================
      if(roomColor == yelloww) {
       myGame.add(new treasure(x,y,0));
       }
  //==============================================================================
  
    x++;
    if(x == map.width){
       x = 0;
      y++;     
    }

  }
  //==================================================================================
     
    } 
  ////////////////////////////////////////////

  
  
  
  
  
  
  
  

}

///////////////////////////////////////////////////////////////////////////////

void keyPressed() {
  if (key == 'W' || key == 'w') up = true;
  if (key == 'S' || key == 's') down = true;
  if (key == 'A' || key == 'a') left = true;
  if (key == 'D' || key == 'd') right = true;
  if (key == ' ') space = true;
}

////////////////////////////////////////////////////////////////////////////
void keyReleased() {
  if (key == 'W' || key == 'w') up = false;
  if (key == 'S' || key == 's') down = false;
  if (key == 'A' || key == 'a') left = false;
  if (key == 'D' || key == 'd') right = false;
  if (key == ' ') space = false;
}
//////////////////////////////////////////////////////////////////
void click() {
  mouseReleased = false;
  if (mousePressed) wasPressed = true;
  if (wasPressed && !mousePressed) {
    mouseReleased = true;
    wasPressed = false;
  }
}
