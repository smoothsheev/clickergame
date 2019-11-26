void gameover() {

  
    imageMode(CORNER);
  background(240, 20, 20);
  image(dead, -100, 0, 1000, 800);
}

void gameoverClicks() {
  mode = INTRO;
}
