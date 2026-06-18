void inProg() {
  background(0);
  
  // jLine setup
  noFill();
  stroke(0,255,0);
  strokeWeight(6);
  circle(300,640,120);
  circle(500,640,120);
  circle(700,640,120);
  
  // target setup
  fill(255);
  noStroke();
  circle(x1,y1,diameter);
  circle(x2,y2,diameter);
  circle(x3,y3,diameter);
  
  // target falling
  y1 += v1;
  y2 += v2;
  y3 += v3;
  
  // scorekeeping
  textSize(48);
  textAlign(CENTER,CENTER);
  text("streak: " + streak,880,400);
  
  // missing (game over)
  if (y1 >= 850 || y2 >= 850 || y3 >= 850) mode = gameOver;
}

// hitting targets
void inProgKeyP() {
  if (key == 'v') {
    if (dist(x1,y1,300,640) <= 100) {
      y1 = -50;
      v1 *= 1.05;
      streak += 1;
    } else {
      mode = gameOver;
    }
  }
  if (key == 'b') {
    if (dist(x2,y2,500,640) <= 100) {
      y2 = -50;
      v2 *= 1.05;
      streak += 1;
    } else {
      mode = gameOver;
    }
  }
  if (key == 'n') {
    if (dist(x3,y3,700,640) <= 100) {
      y3 = -50;
      v3 *= 1.05;
      streak += 1;
    } else {
      mode = gameOver;
    }
  }
}
