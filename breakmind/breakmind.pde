





// scorekeeping
int score;

// mode ints
int mode;
final int intro = 1;
final int inProg = 2;
final int paused = 3;
final int gameOver = 4;





void setup() {
  size(1000,800);
  mode = intro;
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
