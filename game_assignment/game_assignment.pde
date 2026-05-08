int mode;
final int intro = 0;
final int inProg = 1;
final int paused = 2;
final int gameOver = 3;




void setup() {
  size(800,800);
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
  } else {
    println("error: you are a bozo and you set your mode to " + mode);
  }
}
  
