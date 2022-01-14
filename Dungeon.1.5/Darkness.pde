class Darkness{
  float opacity;
  float x,y,size;
  float d;
  ///////////////////////////////////////////////////////////////
  Darkness (float _x, float _y, float s){
    size = s;
    x =_x;
    y =_y;  
  }
  //////////////////////////////////////////////////////////////////
  
  void show(){
  int i = 0;
  int l = 0;
  while (i < width + 10 && l < height){
  noStroke();
    fill(0,opacity);
    d = dist(myHero.loc.x,myHero.loc.y, i,l);
    opacity = map(d, 0, 1140,0 ,330);
    //////////////////////////////////////////////////////////////////////////
  square (i,l,6);
  if( i > width){
    i = 0;
    l = l + 6;
  }
  i = i + 6;
  }
  //////////////////////////////////////////////////////////////////////////
  
  
  
  }
  
}
