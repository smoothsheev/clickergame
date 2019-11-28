int mode;
final int INTRO = 0;
final int SELECT = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;


//int gun;
//final int PISTOL = 10;
//final int REVOLVER = 20;
//final int SAWEDOFF = 30;


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;  //toolbox of functions
AudioPlayer bump, coin, theme, gameover, revolverShot, revolverReload;  //individual sound files

float x, y, vx, vy, hx, hy, gx;
int score, lives, health, damage, time, ammo, mag, highscore, damageHeadshot;

boolean mouseEnabled, shotgun;
PImage arthur, redDeadTitle, crosshairs;
PImage dead;
PImage gun;
PImage revolver;
PImage pistol;
PImage repeater;
PImage sawedoff;


 
   
void setup() {
mouseEnabled = true;
frameRate(60);
  crosshairs = loadImage("crosshairs.png");
  arthur = loadImage("arthur.png");
  dead = loadImage("dead.jpg");
  gun = loadImage("gun.png");
  revolver = loadImage("revolver.png");
  pistol = loadImage("pistol.png");
  sawedoff = loadImage("sawedoff.png");
  repeater = loadImage("repeater.png");
  redDeadTitle = loadImage("Red_Dead_Redemption_2_Logo.png");

  x = 400;
  y = 400;
  vx = random(-2|-4);
  vy = random(-2|-4);
  hx = 389;
  hy = 371;

  score = 0;
  lives = 3;
  health = 1000;
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
  
  //loading sound files
  minim = new Minim(this);
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
  theme = minim.loadFile("Main Theme Red Dead Redemption 2 OST.mp3");
  revolverShot = minim.loadFile("revolver1.wav");
  revolverReload = minim.loadFile("Rreload.wav");
}
 

void draw() {
  if (mode == INTRO) {
    intro();
    lives = 3;
  } else if (mode == GAME) {
    game();
  }
    else if (mode == SELECT) {
      select();
  } else if (mode == PAUSE) {
   pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode =" + mode);
  }
  println(mouseX, mouseY);
}
  
