void select() {
  background(200);
  imageMode(CORNER);
  textAlign(CORNER);
  image(revolver, 70, 190, 180, 50);
  textSize(20);
  text("Revolver", 100, 260);
  image(pistol, 340, 190, 150, 50);
  image(sawedoff, 590, 155, 130, 105);
}

void selectClicks() {
  if(mouseX > 70 && mouseX < 250 && mouseY > 190 && mouseY < 240) {
    
    mode = RGAME;
  }
  if(mouseX > 340 && mouseX < 490 && mouseY > 190 && mouseY < 240) {
    mode = PGAME;
  }
}
