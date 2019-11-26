
void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == SELECT) {
    selectClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
   pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else {
    println("Error: Mode =" + mode);
  }
}
