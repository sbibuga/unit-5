void mousePressed() {
  mousePressX = mouseX;
  mousePressY = mouseY;
  if (mode == intro) {
    introClicksP();
  } else if (mode == inProg) {
    inProgClicksP();
  } else if (mode == paused) {
    pausedClicksP();
  } else if (mode == gameOver) {
    gameOverClicksP();
  } else {
    println("error: you are a bozo and you set your mode to " + mode);
  }
}

void mouseReleased() {
  if (mode == intro) {
    introClicksR();
  } else if (mode == inProg) {
    inProgClicksR();
  } else if (mode == paused) {
    pausedClicksR();
  } else if (mode == gameOver) {
    gameOverClicksR();
  } else {
    println("error: you are a bozo and you set your mode to " + mode);
  }
}
