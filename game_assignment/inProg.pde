void inProg() {
  background(0,255,0);
  
  //clicker target
  fill(255);
  stroke(0);
  strokeWeight(3);
  circle(x,y,d);
  x += velocity;
  if (velocity < 20) {
    velocity += velocityChange;
  }
  if (x >= 850) {
    mode = gameOver;
  } else if (x <= -50) {
    mode = gameOver;
  }
}

void inProgClicksP() {
  if (dist(mouseX,mouseY,x,y) <= d) {
    x = 400;
    y = random(225,575);
    score += 1;
    velocity *= -1;
    velocityChange *= -1;
    d *= 0.97;
  }
}

void inProgClicksR() {
}
