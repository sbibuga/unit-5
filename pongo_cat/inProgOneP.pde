void inProg1P() {
  background(0);
  fill(255);
  noStroke();
  
  // paddle and ball
  circle(plx,ply,pld);
  circle(prx,pry,prd);
  fill(255,70,70);
  circle(ballX,ballY,ballD);
  
    // ball moving
  ballX += velocityX;
  ballY += velocityY;
  
    // bouncing off walls
  if (ballY >= height || ballY <= 0) velocityY *= -1;
  
  // distance
  distanceP1 = dist(ballX,ballY,plx,ply);
  distanceP2 = dist(ballX,ballY,prx,pry);
  
  // bouncing
  if (distanceP1 <= (ballD + leftD)/2 && velocityX < 0) {
    velocityX = (ballX - plx)/10*velocityMult;
    velocityY = (ballY - ply)/10*velocityMult;
    velocityMult += 0.05;
    if (velocityX < 1) velocityX = 1;
  } else if (distanceP2 <= (ballD + rightD)/2 && velocityX > 0) {
    velocityX = (ballX - prx)/10*velocityMult;
    velocityY = (ballY - pry)/10*velocityMult;
    velocityMult += 0.05;
    if (velocityX > -1) velocityX = -1;
  }
  
  // player paddle movement
  if (wPressed == true) ply -= 10;
  if (sPressed == true) ply += 10;
  
  // computer paddle movement
  if (velocityX > 0) {
    if (ballY < pry) {
      pry -= (4.5+velocityMult);
    }
    if (ballY > pry) {
      pry += (4.5+velocityMult);
    }
  }
  
  // scoring
  if (ballX >= width) {
    pry = 300; // reset computer paddle
    scoreP1 += 1;
    combo = 0;
    ballX = 500;
    ballY = 300;
    velocityX = -5;
    velocityY = random(-1,1);
    velocityMult = 0.8;
  }
  if (ballX <= 0) {
    pry = 300; // reset computer paddle
    scoreP2 += 1;
    combo = 0;
    ballX = 500;
    ballY = 300;
    velocityX = 5;
    velocityY = random(-1,1);
    velocityMult = 0.8;
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
  
  // game over (best of 5)
  if (scoreP1 == 3) {
    mode = gameOver;
  }
  if (scoreP2 == 3) {
    mode = gameOver;
  }
}
