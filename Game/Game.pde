public static int SQUARE_SIZE = 40;
public color BLUE = color(0, 0, 255);
private static Board tetris;
private static Piece currentPiece;

void setup(){
  size(1000, 1000);
  tetris = new Board();
  currentPiece = new Piece();
  //tetris.setPiece(currentPiece);
  
  tetris.clearBackground();
  tetris.clearLines();

  currentPiece.applyGravity();
  tetris.updateCoords();
  currentPiece.displayTiles();
  tetris.display();
  System.out.println(tetris);
  
}
void mouseClicked(){
  
  currentPiece = new Piece();
  tetris.updateCoords();
  currentPiece.displayTiles();
  tetris.display();
  System.out.println(tetris);
}

void keyPressed(){
  if (key =='a'){
    currentPiece.moveLeft();
    Game.tetris.clearBackground();
    Game.tetris.display();
    Game.currentPiece.displayTiles();
  }
  if (key =='d'){
    currentPiece.moveRight();
    Game.tetris.clearBackground();
    Game.tetris.display();
    Game.currentPiece.displayTiles();
  }
  
}

void draw(){
  
  if (frameCount % 15 == 0){
    tetris.tick();
    Game.tetris.clearLines();
    
  }

  //tetris.updateCoords();
  
  //tetris.display();
  System.out.println(tetris);
  //System.out.println(currentPiece);
  
}
