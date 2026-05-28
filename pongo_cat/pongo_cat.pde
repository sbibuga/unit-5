// variables
float distanceP1;
float distanceP2;
float velocityX;
float velocityY;
float velocityMult;

// scorekeeping
int scoreP1;
int scoreP2;
int combo;

// mode ints
int mode;
final int intro = 1;
final int inProg1P = 2;
final int inProg2P = 3;
final int paused = 4;
final int gameOver = 5;

// paddle and ball variables
float leftX, leftY, leftD, rightX, rightY, rightD;
float ballX, ballY, ballD;
float plx, ply,pld, prx, pry, prd;

// keyboard variables
boolean wPressed, sPressed, upPressed, downPressed;







void setup() {
  size(1000,600);
  mode = intro;
}

void draw() {
  if (mode == intro) {
    intro();
  } else if (mode == inProg1P) {
    inProg1P();
  } else if (mode == inProg2P) {
    inProg2P();
  } else if (mode == paused) {
    paused();
  } else if (mode == gameOver) {
    gameOver();
  }
}
