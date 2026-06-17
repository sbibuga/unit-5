void intro() {
  background(255);
  
  // text
  fill(0);
  textSize(90);
  textAlign(CENTER,CENTER);
  text("dumb thingy wooo",500,240);
  noFill();
  stroke(0);
  strokeWeight(6);
  rect(350,400,300,120);
  rect(350,560,300,120);
  fill(0);
  text("play",500,452);
  textSize(78);
  text("options",500,614);
}

void introClicksP() {
  if (mouseX >= 350 && mouseX <= 650 && mouseY >= 440 && mouseY <= 560) mode = inProg;
}
