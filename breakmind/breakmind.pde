// paddle position
float padX, padY, padSize, padVelo;

// ball position
float ballX, ballY, ballSize, ballVX, ballVY;

// key booleans
boolean aPressed, dPressed;

// brick size
float brickD;


// scorekeeping
int score;

// mode ints
int mode;
final int intro = 1;
final int inProg = 2;
final int paused = 3;
final int gameOver = 4;

// brick arrays
int[] x;
int[] y;

// colours
color[] brickHue;



void setup() {
  size(1000,800);
  mode = intro;
  
  // array setup
  x = new int[4];
  y = new int[4];
  
  // colour setup
  brickHue = new color[4];
  
  brickHue[0] = #FF7777;
  brickHue[1] = #FFFFAA;
  brickHue[2] = #77FF77;
  brickHue[3] = #7799FF;
  
  // array setup II
  x[0] = 200;
  y[0] = 80;
  
  x[1] = 400;
  y[1] = 210;
  
  x[2] = 600;
  y[2] = 340;
  
  x[3] = 800;
  y[3] = 470;
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
