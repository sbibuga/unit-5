void inProg2P() {
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
    velocityX = (ballX - leftX)/10*velocityMult;
    velocityY = (ballY - leftY)/10*velocityMult;
    velocityMult += 0.05;
    ballD *= 0.95;
    if (velocityX < 1) velocityX = 1;
    combo += 1;
  } else if (distanceP2 <= (ballD + rightD)/2 && velocityX > 0) {
    velocityX = (ballX - rightX)/10*velocityMult;
    velocityY = (ballY - rightY)/10*velocityMult;
    velocityMult += 0.05;
    ballD *= 0.95;
    if (velocityX > -1) velocityX = -1;
    combo += 1;
  }
  
  // paddle movement
  if (wPressed == true) leftY -= 10;
  if (sPressed == true) leftY += 10;
  if (upPressed == true) rightY -= 10;
  if (downPressed == true) rightY += 10;
  
  // scoring
  if (ballX >= width) {
    scoreP1 += 1;
    combo = 0;
    ballX = 500;
    ballY = 300;
    velocityX = -5;
    velocityY = random(-1,1);
    velocityMult = 0.8;
    ballD = 80;
  }
  if (ballX <= 0) {
    scoreP2 += 1;
    combo = 0;
    ballX = 500;
    ballY = 300;
    velocityX = 5;
    velocityY = random(-1,1);
    velocityMult = 0.8;
    ballD = 80;
  }
  
  // scorekeeping
  stroke(255);
  strokeWeight(5);
  line(500,20,500,100);
  fill(255);
  noStroke();
  textSize(80);
  textAlign(RIGHT,CENTER);
  text(scoreP1,470,60);
  textAlign(LEFT,CENTER);
  text(scoreP2,530,60);
  
  // combo keeping
  fill(255);
  textSize(60);
  textAlign(CENTER,CENTER);
  text("combo: " + combo,500,550);
  
  // game over (best of 5)
  if (scoreP1 == 3) {
    mode = gameOver;
  }
  if (scoreP2 == 3) {
    mode = gameOver;
  }
}
