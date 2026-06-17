void intro() {
  
  // paddle setup
  padX = width/2;
  padY = height;
  padSize = 100;
  padVelo = 10;
  
  // brick setup
  brickD = 85;
  
  // ball setup
  ballX = width/2;
  ballY = 575;
  ballSize = 30;
  ballVX = random(-2,2);
  ballVY = 5;
  
  // ui
  background(255);
  fill(0);
  textSize(150);
  textAlign(CENTER,CENTER);
  text("breaktuo",500,300);
  textSize(60);
  text("click to start",500,625);
  
  // key booleans
  aPressed = false;
  dPressed = false;
  
  // score
  score = 0;
}

void introClicksP() {
  mode = inProg;
}
