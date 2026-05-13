void keyPressed() {
  if (key == 'p') {
    if (mode == inProg) {
      mode = paused;
      savedVelocity = velocity;
      velocity = 0;
    } else if (mode == paused) {
      mode = inProg;
      velocity = savedVelocity;
    }
  }
}

void keyReleased() { 
  // if (key == 'o')
}
