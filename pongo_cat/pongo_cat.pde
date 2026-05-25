// variables
float distanceP1;
float distanceP2;
float velocityX;
float velocityY;

// scorekeeping
int scoreP1;
int scoreP2;

// mode ints
int mode;
final int intro = 1;
final int inProg = 2;
final int paused = 3;
final int gameOver = 4;

// paddle and ball variables
float leftX, leftY, leftD, rightX, rightY, rightD;
float ballX, ballY, ballD;

// keyboard variables
boolean wPressed, sPressed, upPressed, downPressed;







void setup() {
  size(1000,600);
  mode = intro;
  
  // variable setup
  leftX = 0;
  leftY = 300;
  leftD = 150;
  rightX = 1000;
  rightY = 300;
  rightD = 150;
  ballX = 500;
  ballY = 300;
  ballD = 80;
  scoreP1 = 0;
  scoreP2 = 0;
  velocityX = 5;
  velocityY = random(-1,1);
  wPressed = false;
  sPressed = false;
  upPressed = false;
  downPressed = false;
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
  }
}
