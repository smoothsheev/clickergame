void pause() {
  background(0);
  fill(lred);
  textSize(80);
    textAlign(CENTER, CENTER);
  text("PAUSE", 400, 120);
  
}


void pauseClicks() {
  mode = GAME;
   if (keyPressed) {
   if (keyCode == SHIFT) {
     mode = GAME;
   }
}
}
