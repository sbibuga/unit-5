void inProg() {
  background(0);
  fill(255);
  noStroke();
  
  // paddle and ball
  circle(leftX,leftY,leftD);
  circle(rightX,rightY,rightD);
  fill(255,70,70);
  circle(ballX,ballY,ballD);
  
  // ball moving
  ballX += velocityX;
  ballY += velocityY;
  
  // bouncing off walls
  if (ballY >= height || ballY <= 0) velocityY *= -1;
  
  // distance
  distanceP1 = dist(ballX,ballY,leftX,leftY);
  distanceP2 = dist(ballX,ballY,rightX,rightY);
  
  // bouncing
  if (distanceP1 <= (ballD + leftD)/2 && velocityX < 0) {
    velocityX = (ballX - leftX)/10;
    velocityY = (ballY - leftY)/10;
  } else if (distanceP2 <= (ballD + rightD)/2 && velocityX > 0) {
    velocityX = (ballX - rightX)/10;
    velocityY = (ballY - rightY)/10;
  }
  
  // ball movement
  if (wPressed == true) leftY -= 10;
  if (sPressed == true) leftY += 10;
  if (upPressed == true) rightY -= 10;
  if (downPressed == true) rightY += 10;
}
