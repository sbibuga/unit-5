void keyPressed() {
  if (key == 'a') {
    aPressed = true;
  }
  
  if (key == 'd') {
    dPressed = true;
  }
}

void keyReleased() {
  if (key == 'a') {
    aPressed = false;
  }
  
  if (key == 'd') {
    dPressed = false;
  }
}
