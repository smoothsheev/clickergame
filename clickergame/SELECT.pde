void select() {
  background(200);
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  image(revolver, 160, 220, 180, 50);
  textSize(20);
  text("Revolver", 160, 260);
  text("Capacity: 6 rounds", 160, 300);
  text("Reload: 5 seconds", 160, 340);
  text("Damage: 400", 160, 380);
  
  image(pistol, 400, 220, 150, 50);
    text("Pistol", 400, 260);
    text("Capacity: 13 rounds", 400, 300);
  text("Reload: 5 seconds", 400, 340);
  text("Damage: 250", 400, 380);
  
  image(sawedoff, 650, 220, 130, 105);
   text("Sawed-Off", 650, 260);
}

void selectClicks() {  
  //revolver
  if(mouseX > 70 && mouseX < 250 && mouseY > 190 && mouseY < 240) {
    mode = GAME;
    damage = 400;
    damageHeadshot = 1200;
    ammo = 6;
    mag = 6;
  }   
  //pistol
  if(mouseX > 340 && mouseX < 490 && mouseY > 190 && mouseY < 240) {
    mode = GAME;
    damage = 250;
    damageHeadshot = 750;
    ammo = 13;
    mag = 13;
  }
  
  //sawed off
  if(mouseX > 580 && mouseX < 720 && mouseY > 200 && mouseY < 250) {
    mode = GAME;
    shotgun = true;
    ;
    ammo = 2;
    mag = 2;
}
}
