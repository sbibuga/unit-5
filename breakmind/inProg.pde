void inProg() {
  background(0);
  
  // paddle and ball
  noStroke();
  fill(255);
  circle(padX,padY,padSize);
  circle(ballX, ballY, ballSize);
  
  // bricks
  fill(255);
  int i = 0;
  while (i < 4) {
    fill(brickHue[i]);
    circle(x[0], y[i], brickD);
    circle(x[1], y[i], brickD);
    circle(x[2], y[i], brickD);
    circle(x[3], y[i], brickD);
    i += 1;
  }
  
  // ball movement
  ballX += ballVX;
  ballY += ballVY;
  
  // ball bouncing off paddle
  float ballPaddleDist = dist(ballX, ballY, padX, padY);
  if (ballPaddleDist <= ballSize/2 + padSize/2 && ballVY > 0) {
    ballVX = ((ballX - padX) /5);
    ballVY = ((ballY - padY) /5);
  }
  
  // ball bouncing off walls
  if (ballX >= width || ballX <= 0) ballVX *= -1;
  if (ballY <= 0) ballVY *= -1;
  
  // paddle movement
  if (aPressed == true) {
    padX -= 10;
  }
  if (dPressed == true) {
    padX += 10;
  }

}
