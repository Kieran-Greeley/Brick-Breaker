Ball b;
Paddle p;
Brick[][]bricks;
boolean gameStart = false;
int lives = 3;
int NumOfBrokenBricks = 0;
void setup() {
  size(500, 500);
  background(0);
  b = new Ball();
  p = new Paddle();
  bricks = new Brick[10][3];
  for (int col = 0; col < 10; col++){
    for (int row = 0; row < 3; row++){
      bricks[col][row] = new Brick(col * 50, row * 20 + 20);
    }
  }
}
void draw(){
  background(0);
  text("lives: " + lives, 450, 450);
  circle(b.getballx(), b.getbally(), b.getballsize());
  rect(p.getpaddleX(), p.getpaddleY(), 150, 10);
  for (int col = 0; col < 10; col++){
    for (int row = 0; row < 3; row++){
      if (bricks[col][row].checkbrick(b) == true){
        rect(bricks[col][row].brickX, bricks[col][row].brickY, bricks[col][row].brickWidth, bricks[col][row].brickHeight);
      }
    }
  }
  if (gameStart == true && lives >= 0 && NumOfBrokenBricks < 30){
    lives = b.ballmove(lives);
  }else if (lives < 0 || NumOfBrokenBricks >= 30){
    for (int col = 0; col < 10; col++){
      for (int row = 0; row < 3; row++){
        bricks[col][row].brokenbrick = false;
      }
    }
    gameStart = false;
    lives = 3;
    NumOfBrokenBricks = 0;
    b.ballx = 250;
    b.bally = 250;
  }
  p.paddlemove();
}
void keyPressed(){
  if (key == ' '){
    gameStart = true;
  }
}
