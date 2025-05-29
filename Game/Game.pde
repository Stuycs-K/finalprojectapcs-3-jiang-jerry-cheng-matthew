public static int SQUARE_SIZE = 40;
public color BLUE = color(0, 0, 255);
private static Board tetris;
private Piece currentPiece;

void setup(){
  size(1000, 1000);
  tetris = new Board();
  currentPiece = new Piece();
  tetris.setPiece(currentPiece);
  
  tetris.clearBackground();
  tetris.clearLines();

  currentPiece.applyGravity();
  tetris.updateCoords();
  currentPiece.displayTiles();
  tetris.display();
  System.out.println(tetris);
  
}
void keyPressed(){
  
}

void draw(){
  tetris.clearBackground();
  tetris.clearLines();

  currentPiece.applyGravity();
  tetris.updateCoords();
  currentPiece.displayTiles();
  tetris.display();
  System.out.println(tetris);
  
}
