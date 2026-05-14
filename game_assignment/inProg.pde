void inProg() {
  background(0,255,0);
  textAlign(CENTER,CENTER);
  textSize(30);
  fill(0);
  text("Score: " + score,400,660);
  text("Pauses left: " + pausesLeft + "/2",400,705);
  text("Velocity: " + velocity,400,750);
  
  //clicker target
  fill(255);
  stroke(0);
  strokeWeight(3);
  circle(x,y,d);
  x += velocity;
  if (x >= 850) {
    mode = gameOver;
    if (score > highScore) {
      highScore = score;
    }
  } else if (x <= -50) {
    mode = gameOver;
    if (score > highScore) {
      highScore = score;
    }
  }
}

void inProgClicksP() {
  if (dist(mouseX,mouseY,x,y) <= d) {
    x = 400;
    y = random(225,575);
    if (velocity < 15) {
      velocity += velocityChange;
    }
    score += 1;
    velocity *= -1;
    velocityChange *= -1;
    d *= 0.975;
  }
}

void inProgClicksR() {
}
