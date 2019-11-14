void intro() {
  background(255);
  score = 0;
  stroke(0);
  strokeWeight(2);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(60);
  text("CLICKER GAME", 400, 100);
  fill(white);
  rect(300, 350, 200, 50);
  if (mouseX > 300 && mouseX < 500 && mouseY > 350 && mouseY < 400) {
    fill(cyan);
    rect(300, 350, 200, 50);
    theme.play();
  }
  textSize(30);
  fill(0);
  text("START", 400, 370);


}


void introClicks() {
    if (mouseX > 300 && mouseX < 500 && mouseY > 350 && mouseY < 400) {
     mode = SELECT;
    theme.pause();
    theme.rewind();
    }
}
