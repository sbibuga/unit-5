void inProg() {
  background(0);
  
  // circles
  fill(255);
  int i = 0;
  while (i < 4) {
    circle(x[i], y[i], brickD);
    i += 1;
  }
}
