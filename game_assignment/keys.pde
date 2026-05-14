void keyPressed() {
  if (key == 'p') {
    if (mode == inProg) {
      if (pausesLeft > 0) {
        pausesLeft -= 1;
        mode = paused;
        savedVelocity = velocity;
        velocity = 0;
      }
    } else if (mode == paused) {
      mode = inProg;
      velocity = savedVelocity;
      x = 400;
      y = random(225,575);
    }
  }
}

void keyReleased() { 
  // if (key == 'o')
}
