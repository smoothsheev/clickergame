int mode;
final int INTRO = 0;
final int SELECT = 1;
final int PGAME = 2;
final int RGAME = 3;
final int SOGAME = 4;
final int PAUSE = 5;
final int GAMEOVER = 6;


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
AudioPlayer bump, coin, theme, gameover;  //individual sound files


float x, y, vx, vy;
int score, lives, health;
PImage arthur;
PImage dead;
PImage gun;
PImage revolver;
PImage pistol;
PImage repeater;
PImage sawedoff;

void setup() {
  arthur = loadImage("arthur.png");
  dead = loadImage("dead.jpg");
  gun = loadImage("gun.png");
  revolver = loadImage("revolver.png");
  pistol = loadImage("pistol.png");
  sawedoff = loadImage("sawedoff.png");
  repeater = loadImage("repeater.png");
  x = 400;
  y = 400;
  vx = random(-1,1);
  vy = random(-1,1);

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
  theme = minim.loadFile("mario bros theme.mp3");
}

void draw() {
  if (mode == INTRO) {
    intro();
    lives = 3;
  } else if (mode == PGAME) {
    pgame();
  } else if (mode == RGAME) {
    rgame();
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
