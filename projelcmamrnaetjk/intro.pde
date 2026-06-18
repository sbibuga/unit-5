void intro() {
  background(255);
  
  // text
  fill(0);
  textSize(90);
  textAlign(CENTER,CENTER);
  text("dumb thingy wooo",500,240);
  noFill();
  stroke(0);
  strokeWeight(8);
  rect(350,400,300,120);
  rect(350,560,300,120);
  fill(0);
  text("play",500,452);
  textSize(78);
  text("options",500,614);
  
  // variables
  streak = 0;
  x1 = 300;
  x2 = 500;
  x3 = 700;
  diameter = 100;
  y1 = -100;
  y2 = -340;
  y3 = -580;
  v1 = 5;
  v2 = 5;
  v3 = 5;
}

void introClicksP() {
  if (mouseX >= 350 && mouseX <= 650 && mouseY >= 440 && mouseY <= 560) mode = inProg;
}
