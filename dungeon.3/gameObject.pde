class GameObject{
  int roomX, roomY;
  PVector loc;
  PVector vel;
  float hp;
  int size;
  float damage;
  color c;
  int em;
  //////////////////////////////////////////////////////////////////////
  GameObject(){
    loc = new PVector(width/2,height / 2);
    vel = new PVector(0,0);
    hp = 1;
    c = purple;
    
    
  }
  
  //////////////////////////////////////////////////////////////////////////////////////////
  void show(){
    
    
    
  }
  //////////////////////////////////////////////////////////////////////////////////////
  void act(){
    loc.add(vel);
    ///////////////////////////////////////////////////////////////////////////
    if(loc.x < width*0.1) loc.x = width * 0.1;
    if(loc.x > width*0.9) loc.x = width * 0.9;
    if(loc.y < height*0.1) loc.y = height * 0.1;
    if(loc.y > height*0.9) loc.y = height * 0.9;
  }
  
 /////////////////////////////////////////////////////////////////////////////////// 
  
  
  
  
  
  
  
  
  
}
