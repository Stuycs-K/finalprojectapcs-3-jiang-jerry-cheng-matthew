public class Board{
  ArrayList<Tile[]> tileBoard;
  
  public Board(){//default 20 x 10 board
    tileBoard = new ArrayList<Tile[]>();
    for (int i = 0; i < 20; i++){
      tileBoard.add(new Tile[10]);
    }
  }
  
  public void display(){
    for (int i = 0; i < tileBoard.size(); i++){
      for (int j = 0; j < tileBoard.get(0).length; j++){
        if (tileBoard.get(i)[j] == null){
           fill(color(255,255,255));
           square(j*SQUARE_SIZE+1, i*SQUARE_SIZE+1, SQUARE_SIZE);
        }else{
          tileBoard.get(i)[j].display();
        }
      }
     }
  }
  public void clearBackground(){
    for (int i = 0; i < tileBoard.size(); i++){
      for (int j = 0; j < tileBoard.get(0).length; j++){
           fill(color(255,255,255));
           square(j*SQUARE_SIZE+1, i*SQUARE_SIZE+1, SQUARE_SIZE);
      }
    }
  }
  
  public void setTile(Tile newTile){
    tileBoard.get(newTile.getX())[newTile.getY()] = newTile;
  }
  
  // **test this when Piece class is completed** 
  
  public void setPiece(Piece newPiece){
    for (Tile x : newPiece.tiles){
      setTile(x);
    }
  }
  public void clearLines(){
    int newLines = 0;
    for (int i = 0; i < tileBoard.size(); i++){
      boolean isfull = true;
      for (int j = 0; j < tileBoard.get(0).length; j++){
        if (tileBoard.get(i)[j] == null){
          isfull = false;
          break;
        }
      }
      if (isfull){
        newLines ++;
        tileBoard.remove(i);
        System.out.println("removing: " + i);
      }
    }
    
    for (int i = 0; i < newLines; i++){
      tileBoard.add(0, new Tile[10]);
    }
    updateCoords();
  }
  public void updateCoords(){
    for (int i = 0; i < tileBoard.size(); i++){
      for (int j = 0; j < tileBoard.get(0).length; j++){
         if (tileBoard.get(i)[j] instanceof Tile){
           tileBoard.get(i)[j].setX(i);
           tileBoard.get(i)[j].setY(j);
         }
      }
    }
  }
  public String toString(){
    String res = "";
    for (int i = 0; i < tileBoard.size(); i++){
      for (int j = 0; j < tileBoard.get(0).length; j++){
        if (tileBoard.get(i)[j] == null){
          res += ".";
        }else{
          res += "#";
        }
      }
      res += "\n";
  }
  return res;
}
}
