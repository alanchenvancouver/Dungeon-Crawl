void pause(){
    fill(#717B81);
    rect(width/2,height/2,325,450);
    strokeWeight(2);
    fill(black);
    rect(width/2,height/2 - 55, 140,220);
    fill(red);
    square(width/2 + 150, height/2 - 210, 30);
   kUp.show(width/2,height/2 - 50,100,140);
   fill(0);
   rect(width/2, height/2 + 140, 180,100);
   fill(#565F64);
   rect(width/2 - 133,height/2 -210,60,30);
   fill(#313639);
   rect(width/2 - 73,height/2 -210,60,30);
   
   //==========================================================================
   if(myweapons == 1) image(shotgun, width/2,height/2 +140 ,180,90);
    if (myweapons == 2) image(autopistol, width/2,height/2 +140 ,180,90);
   if (myweapons == 3) image(sniper, width/2,height/2 +140 ,180,90);
   if(myweapons == 4) image(staff, width/2,height/2 +140 ,180,90); 
   if(myweapons == 5) image(fire, width/2,height/2 +140 ,180,90);
   //===============================================================================
   if(mousePressed && mouseX > width/2 + 135 && mouseX < width/2 + 165 && mouseY > height/2 - 225 && mouseY < height/2 - 195) mode = game;
   if(mousePressed && mouseX > width/2 - 103 && mouseX < width/2 - 43  && mouseY > height/2 - 225 && mouseY < height/2 - 195) mode = pausez;
   
  
}
