
void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == SELECT) {
    selectClicks();
  } else if (mode == PGAME) {
    pgameClicks();
  } else if (mode == RGAME) {
    rgameClicks();
  } else if (mode == PAUSE) {
   pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else {
    println("Error: Mode =" + mode);
  }
}
