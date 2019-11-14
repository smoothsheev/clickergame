void pgame(){
  background(70, 70, 70);
  imageMode(CORNER);
  image(gun, 700, 700, 200, 200);

  text("Score: " + score, 100, 50);
  text("Lives: " + lives, 100, 100);
  //target
  strokeWeight(4);
  fill(255);
  imageMode(CENTER);
  image(arthur, x, y, 200, 100);
  
  //movement
  x = x + vx;
  y = y + vy;
  
  //bounce top or bottom
  if(y < 50 || y > 750) vy = vy * -1;
  if(x < 50 || x > 750) vx = vx * -1;
}

void pgameClicks(){
if (dist(mouseX, mouseY, x, y) < 50) {
  score = score + 100;
  coin.rewind();
  coin.play();
  health = health - score;
} else if (health <= 0){
mode = INTRO;
} else {
  lives = lives - 1;
  coin.rewind();
  bump.play();
  if (lives == 0) mode = GAMEOVER; 
}


}
