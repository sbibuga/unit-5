void inProg() {
  background(0);
  fill(255);
  noStroke();
  
  // paddle and ball setup
  circle(leftX,leftY,leftD);
  circle(rightX,rightY,rightD);
  fill(255,70,70);
  circle(ballX,ballY,ballD);
  
  // ball movement
  if (wPressed == true) {
    leftY -= 10;
  }
  if (sPressed == true) {
    leftY += 10;
  }
}
