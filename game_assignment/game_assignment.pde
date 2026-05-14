int mode;
float x,y,d;
float velocity;
final int intro = 0;
final int inProg = 1;
final int paused = 2;
final int gameOver = 3;
int mousePressX = 0;
int mousePressY = 0;
float velocityChange;
int score;
int highScore;
float savedVelocity;
int pausesLeft;



void setup() {
  size(800,800);
  mode = intro;
  
  // target stuff
  x = 400;
  y = 400;
  d = 80;
  velocity = 0.6;
  velocityChange = 0.6;
  score = 0;
  highScore = 0;
  pausesLeft = 2;
}

void draw() {
  if (mode == intro) {
    intro();
  } else if (mode == inProg) {
    inProg();
  } else if (mode == paused) {
    paused();
  } else if (mode == gameOver) {
    gameOver();
  } else {
    println("error: you are a bozo and you set your mode to " + mode);
  }
}
  
