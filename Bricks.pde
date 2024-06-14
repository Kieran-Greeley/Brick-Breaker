//Theryn Beck-Nguyen
//Eddited by Kieran Greeley
public class Brick{
  int brickX, brickY;
  int brickWidth, brickHeight;
  boolean brokenbrick;
  Brick(int X, int Y){
    brickWidth = 50;
    brickHeight = 20;
    brickX = X;
    brickY = Y;
    brokenbrick = false;
  }
  boolean checkbrick(Ball b){
    if (brokenbrick == false){
      if (b.getballx() >= brickX && b.getballx() <= brickX + 50 && b.getbally() <= brickY && b.getbally() >= brickY - 20){
        brokenbrick = true;
        b.ballbounce();
        NumOfBrokenBricks ++;
        return false;
      }else{
        return true;
      }
    }else{
      return false;
    }
  }
}
