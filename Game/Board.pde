public class Board{
  Tile[][] tileBoard;
  
  public Board(){
    tileBoard = new Tile[10][20];
  }
  
  public void display(){
    for (int i = 0; i < tileBoard.length; i++){
      for (int j = 0; j < tileBoard[0].length; j++){
        if (tileBoard[i][j] == null){
           fill(color(255,255,255));
           square(i*SQUARE_SIZE+1, j*SQUARE_SIZE+1, SQUARE_SIZE);
        }else{
          tileBoard[i][j].display();
        }
      }
     }
  }
}
