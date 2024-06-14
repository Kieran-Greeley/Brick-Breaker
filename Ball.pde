// Kieran Greeley
// this class creats the ball and tells it how to move
public class Ball{
  int ballx;
  int bally;
  int ballxspeed;
  int ballyspeed;
  int ballsize;
 
  Ball(){
    ballx = 250;
    bally = 250;
    
    //creat a random dircection for the ball to go in, also makes sure it can't be 0
    ballxspeed = int(random(-5, 5));
    if (ballxspeed == 0){
      ballxspeed = int(random(-5, 5));
    }
    ballyspeed = int(random(-10, -2));
    if (ballyspeed == ballxspeed){
      ballyspeed = int(random(-10, -2));
    }
    
    ballsize = 15;
  }
  //this is all the code to dictates the moving, basically if it hits the sides, top, or bottom it will bounce.
  int ballmove(int lives){
    if (ballx >= 500){
      ballxspeed = ballxspeed * (-1);
    }else if (ballx <= 0){
      ballxspeed = ballxspeed * (-1);
    }
    if (bally <= 0){
      ballyspeed = ballyspeed * (-1);
    }else if (ballx >= mouseX - 75 && ballx <= mouseX + 75 && bally <= 450 && bally >= 440){
      ballyspeed = ballyspeed * (-1); 
    }else if (bally >= 500){
      ballx = 250;
      bally = 250;
      lives = lives - 1;
      gameStart = false;
    }
    ballx += ballxspeed;
    bally += ballyspeed;
    return lives;
  }
  void ballbounce(){
    ballyspeed = ballyspeed * (-1);
  }
  int getballx(){
    return ballx;
  }
  int getbally(){
    return bally;
  }
  int getballsize(){
    return ballsize;
  }
}
