int mode;
final int intro = 0;
final int inProg = 1;
final int gameOver = 2;
final int options = 3;





// setup
void setup() {
  size(1000,800);
  mode = intro;
}

// draw
void draw() {
  if (mode == intro) intro();
  if (mode == inProg) inProg();
  if (mode == gameOver) gameOver();
  if (mode == options) options();
}
