void pausez(){
    fill(#717B81);
    rect(width/2,height/2,325,450);
    strokeWeight(2);
    fill(black);
    rect(width/2 - 95,height/2 - 80, 100,160);
   kUp.show(width/2 - 95,height/2 - 70,80,112);
   
   
   fill(red);
    square(width/2 + 150, height/2 - 210, 30);
   fill(#313639);
   rect(width/2 - 133,height/2 -210,60,30);
   fill(#565F64);
   rect(width/2 - 73,height/2 -210,60,30);
   

   buttonh.show();
   buttons.show();
   buttona.show();
   buttond.show();
   //=============================================================
    textSize(22);
    fill(red);
    rect (width - 100, 20, 160,20);
    fill(0);
    text(myHero.hp + "  /  " + Maximumhp, width - 100,20);
    //============================================================

      fill(yellow);
      textSize(20);
      text("point : " + point, 670, 240);
      text(Maximumhp, 520,440);
      text(myHero.speed, 520,480);
      text(attack,520,520);
      text("HP",640,280);
      text("SPEED",640,315);
      text("ATTACK",640,350);
   if( point > 0 &&  mouseReleased &&  mouseX < 720 && mouseX > 690 &&  mouseY < 295  && mouseY >  265  ){
     Maximumhp = Maximumhp + 10;
     myHero.hp = myHero.hp + 10;
     point = point - 1;
   }

    if( point > 0 &&  mouseReleased && mouseX < 720 && mouseX > 690 &&  mouseY < 330  && mouseY >  300){
     myHero.speed = myHero.speed + 0.1;
     point = point - 1;
      }
   
    if( point > 0 &&  mouseReleased && mouseX < 720 && mouseX > 690 &&  mouseY < 365  && mouseY >  335){
      attack = attack + 0.1;
     point = point - 1;
      }
      
     //if( point > 0 &&  mouseReleased && mouseX < 720 && mouseX > 690 &&  mouseY < 400  && mouseY >  370){
     //point = point - 1;
     // }
   
   

   //===============================================================================
   if(mousePressed && mouseX > width/2 + 135 && mouseX < width/2 + 165 && mouseY > height/2 - 225 && mouseY < height/2 - 195) mode = game;
   if(mousePressed && mouseX > width/2 - 163 && mouseX < width/2 - 103  && mouseY > height/2 - 225 && mouseY < height/2 - 195) mode = pause;
   
   
}
