void intro() {
  background(255);
  score = 0;
  stroke(0);
  strokeWeight(2);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(60);
  text("CLICKER GAME", 400, 130);
  imageMode(CENTER);
  textSize(20);
  text("an homage to", 260, 210);
  image(redDeadTitle, 480, 210, 300, 100);
  textSize(30);
  text("HIGH SCORE: " + highscore, 650, 50);
  fill(white);
  rect(300, 350, 200, 50);
   vx = random(-4);
  vy = random(-2|-4);
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
