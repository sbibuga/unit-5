void intro() {
  
  // variable setup
  leftX = 0;
  leftY = 300;
  leftD = 150;
  rightX = 1000;
  rightY = 300;
  rightD = 150;
  ballX = 500;
  ballY = 300;
  ballD = 80;
  scoreP1 = 0;
  scoreP2 = 0;
  combo = 0;
  velocityX = 5;
  velocityY = random(-1,1);
  velocityMult = 0.8;
  wPressed = false;
  sPressed = false;
  upPressed = false;
  downPressed = false;
  
  // 1 player variable setup
  plx = 0;
  ply = 300;
  pld = 150;
  prx = 1000;
  pry = 300;
  prd = 150;
  
  // intro ui
  background(255);
  fill(255);
  stroke(0);
  strokeWeight(5);
  rect(225,350,250,100);
  rect(525,350,250,100);
  fill(0);
  textSize(100);
  textAlign(CENTER,CENTER);
  text("Pong Gayme",500,180);
  textSize(70);
  text("Play 1P",350,400);
  text("Play 2P",650,400);
}

void introClicksP() {
  if (mouseX >= 525 && mouseX <= 775) {
    if (mouseY >= 350 && mouseY <= 450) mode = inProg2P;
  }
  if (mouseX >= 225 && mouseX <= 475) {
    if (mouseY >= 350 && mouseY <= 450) mode = inProg1P;
  }
}
