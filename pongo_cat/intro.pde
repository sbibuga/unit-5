void intro() {
  background(255);
  fill(255);
  stroke(0);
  strokeWeight(5);
  rect(375,350,250,100);
  fill(0);
  textSize(100);
  textAlign(CENTER,CENTER);
  text("Pong Gayme",500,180);
  textSize(80);
  text("Start",500,395);
}

void introClicksP() {
  if (mouseX >= 375 && mouseX <= 625) {
    if (mouseY >= 350 && mouseY <= 450) mode = inProg2P;
  }
}
