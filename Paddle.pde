/*
Draws a paddle for a brick breaker game.

@author Mark Henke
@version April 2021
Eddited by Kieran Greeley
*/
public class Paddle{
  int paddleX, paddleY; //Position of paddle
  Paddle(){
    paddleX = 200;
    paddleY = 450; // Y position of paddle is set near the bottom, doesn't move
  }
  void paddlemove() {
    if (mouseX > 75 && mouseX < 425) { //If mouse is in bounds
    paddleX = mouseX-75; // Paddle x-position is mouseX-75 since the paddle is drawn to the right of the position
    } else if (mouseX < 75) {
      paddleX = 0;
    } else if (mouseX > 425){
      paddleX = 350;
    }
  }
  int getpaddleX(){
    return paddleX;
  }
  int getpaddleY(){
    return paddleY;
  }
}
