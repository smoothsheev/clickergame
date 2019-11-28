void game(){
  
  cursor(crosshairs);
  background(70, 70, 70);
  imageMode(CORNER);
  image(gun, 700, 700, 200, 200);
textSize(20);
  text("Score: " + score, 100, 50);
  text("Lives: " + lives, 100, 100);
  text(ammo + "/" + mag, 100, 150);
  //text("Time Left: " +  600, 100);
  //target
  strokeWeight(4);
  fill(255);
  imageMode(CENTER);
  image(arthur, x, y, 200, 100);
  
  //movement
  x = x + vx;
  y = y + vy;
  hx = hx + vx;
  hy = hy + vy;
  
  //bounce top or bottom
  if(y < 50 || y > 750) vy = vy * -1;
  if(x < 50 || x > 750) vx = vx * -1;
  
  //highscore
 highscore = score;
 if (score >= highscore){
 highscore = score;
 
 if (ammo >= 1) {
   frameCount = 0;
 }
 //RELOAD
 
 if (ammo == 0) {
   revolverReload.rewind();
  revolverReload.play();
  mouseEnabled = false;
  text("reloading...", 100, 200);
  
  
  
}
  if (frameCount >= 300) {
   ammo = mag;
   mouseEnabled = true;
   vx = vx * 1.25;
   vy = vy * 1.25;
 }
 
 
 }
 
 //pause
 if (keyPressed) {
   if (keyCode == SHIFT) {
     mode = PAUSE;
   }
}
}

void gameClicks(){
  ammo = ammo - 1;
 
   if (ammo <= 0) {
    ammo = 0;
  } 
if (mouseEnabled == true) {
//  if (shotgun == true) {
//    if (dist(mouseX, mouseY, hx, hy) < 15) {
//   score = score + damageHeadshot;
//   damageHeadshot = map(dist, 0, 15, 1500, 500);
//    revolverShot.rewind();
//  revolverShot.play();
 
//} 
//if (dist(mouseX, mouseY, x, y) < 40) {
//  score = score + damage;
// revolverShot.rewind();
//  revolverShot.play();
//}

if (dist(mouseX, mouseY, hx, hy) < 11) {
   score = score + damageHeadshot;
    revolverShot.rewind();
  revolverShot.play();
 
} else if (dist(mouseX, mouseY, x, y) < 40) {
  score = score + damage;
 revolverShot.rewind();
  revolverShot.play();
 

   
//  health = health - 1;
//} else if (health <= 0){
//mode = INTRO;

} else {
  lives = lives - 1;
  revolverShot.rewind();
  revolverShot.play();
 if (lives == 0) mode = GAMEOVER; 
}
}
}
 
