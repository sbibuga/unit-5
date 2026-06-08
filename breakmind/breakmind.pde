// colour variables
final color red = #FF7777;
final color orange = #FFBB77;
final color yellow = #FFFFAA;
final color green = #77FF77;
final color blue = #7799FF;
final color purple = #E988EE;

// paddle position
float padX, padY, padSize, padVelo;

// key booleans
boolean aPressed, dPressed, leftPressed, rightPressed;

// brick size
float brickD = 100;


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



void setup() {
  size(1000,800);
  mode = intro;
  
  // paddle setup
  padX = width/2;
  padY = height;
  padSize = 100;
  padVelo = 5;
  
  // array setup
  x = new int[4];
  y = new int[4];
  
  // array setup II
  x[0] = 200;
  y[0] = 100;
  
  x[1] = 400;
  y[1] = 100;
  
  x[2] = 600;
  y[2] = 100;
  
  x[3] = 800;
  y[3] = 100;
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
