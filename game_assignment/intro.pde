void intro() {
  background(255);
  strokeWeight(5);
  fill(255);
  rect(200,325,400,150);
  fill(0);
  textSize(50);
  textAlign(CENTER,CENTER);
  text("click for game",400,400);
}

void introClicksP() {
}

void introClicksR() {
  if (mouseX >= 200 && mouseX <= 600 && mouseY >= 325 && mouseY <= 475) {
    if (mousePressX >= 200 && mousePressX <= 600 && mousePressY >= 325 && mousePressY <= 475) {
      mode = inProg;
    }
  }
}
