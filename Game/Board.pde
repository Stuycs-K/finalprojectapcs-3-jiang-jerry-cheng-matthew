public class Board{
  private ArrayList<Tile[]> tileBoard;
  
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
    if (isOccupied(newTile.getX(), newTile.getY())){
      Game.gameOver = true;
    }else{
      tileBoard.get(newTile.getX())[newTile.getY()] = newTile;
    }
    
  }
  
  // **test this when Piece class is completed** 
  
  public void setPiece(Piece newPiece){
    for (Tile x : newPiece.tiles){
      setTile(x);
    }
    if (Game.isHardDrop){
      Game.gameSpeed = originalGameSpeed;
      Game.isHardDrop = false;
    }
    updateCoords();
    clearLines();
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
        i--;
        System.out.println("removing: " + i);
      }
    }
    
    for (int i = 0; i < newLines; i++){
      tileBoard.add(0, new Tile[10]);
    }
    if (newLines > 0){
      
      if (newLines == 1){
        Game.score += 40;
      }else if (newLines == 2){
        Game.score += 100;
      }else if (newLines == 3){
        Game.score += 300;
      }else if (newLines == 4){
        Game.score += 1200;
      }
      updateCoords();
    }
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
  public void tick(){
    Game.currentPiece.applyGravity(1);
    //Game.tetris.clearLines();
    Game.tetris.clearBackground();
    Game.tetris.display();
    Game.tetris.displayHeldPiece();
    Game.tetris.displayNextPiece();
    Game.tetris.displayScore();
    
    Game.tetris.displayGhostPiece();
    Game.currentPiece.displayTiles();
    
  }
  public void next(){
    if (bag.size() <= 0){
      for (int i = 0; i < 7; i++){
        bag.add(new Piece(i));
      }
    }
    int rand = (int)(Math.random() * bag.size());
    Piece temp = nextPiece;
    nextPiece = bag.remove(rand);
    currentPiece = temp;
    displayGhostPiece();
  }
  public boolean isOccupied(int x, int y){ 
    if (x < 0 || y < 0){
      return true;
    }
    return tileBoard.get(x)[y] instanceof Tile;
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
  
  
  public int[] findMaxHeights(){
    int[] maxHeights = new int[10];
    int index = 0;
    for (int i = 0; i < tileBoard.get(i).length; i ++){
      for (int j = 0; j < tileBoard.size(); j++){
        if (tileBoard.get(j)[i] instanceof Tile){
          maxHeights[index] = j; 
          break;
        }
      }
      index ++;
    }
    return maxHeights;
  }
  public void displayHeldPiece(){
    fill(255);
    square(10*SQUARE_SIZE, 15*SQUARE_SIZE, 5*SQUARE_SIZE);
    
    if (Game.heldPiece != null){
      int x = Game.heldPiece.tiles[0].getX();
      int y = Game.heldPiece.tiles[0].getY();
      float shift = 12;
      for (Tile tile: Game.heldPiece.tiles){
        fill(tile.getColor());
        System.out.println("x: " + (tile.getX()-x) + " y: " + (tile.getY()-y));
        if ( Game.heldPiece.valPiece == Piece.I){
          shift = 11.5;
        }
        if (Game.heldPiece.valPiece == Piece.O){
          shift = 12.5;
        }
        square((tile.getY()-y  + shift) * SQUARE_SIZE, (tile.getX()-x+16) *SQUARE_SIZE, SQUARE_SIZE);
        
      }
      System.out.println();
    }
  }
  public void displayScore(){
    fill(255);
    rect(10*SQUARE_SIZE, 6*SQUARE_SIZE, 5*SQUARE_SIZE, 1*SQUARE_SIZE);
    fill(0);
    text("score: " + Game.score, 11*SQUARE_SIZE, 6.5*SQUARE_SIZE );
  }
  
  public void displayNextPiece(){
    fill(255);
    square(10*SQUARE_SIZE, 0, 5*SQUARE_SIZE);
    if (Game.nextPiece != null){
      int x = Game.nextPiece.tiles[0].getX();
      int y = Game.nextPiece.tiles[0].getY();
      float shift = 12;
      for (Tile tile: Game.nextPiece.tiles){
        fill(tile.getColor());
        System.out.println("x: " + (tile.getX()-x) + " y: " + (tile.getY()-y));
        if ( Game.nextPiece.valPiece == Piece.I){
          shift = 11.5;
        }
        if (Game.nextPiece.valPiece == Piece.O){
          shift = 12.5;
        }
        square((tile.getY()-y  + shift) * SQUARE_SIZE, (tile.getX()-x+1) *SQUARE_SIZE, SQUARE_SIZE);
        
      }
      System.out.println();
    }
  }
  public void displayGhostPiece(){
    ghostPiece = currentPiece.copyPiece();
    ghostPiece.ghostHardDrop();
    ghostPiece.displayTiles();
  }
}
