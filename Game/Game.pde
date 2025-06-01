public static int SQUARE_SIZE = 40;
public color BLUE = color(0, 0, 255);
private static Board tetris;
private static Piece currentPiece;
private static boolean gameOver;

void setup(){
  size(1000, 1000);
  gameOver = false;
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
  if (gameOver){
    setup();
  }else{
    currentPiece = new Piece();
    tetris.updateCoords();
    currentPiece.displayTiles();
    tetris.display();
    System.out.println(tetris);
  }
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
  
  if (frameCount % 3 == 0 && !gameOver){
    tetris.tick();
    
    
  }
  
  
  System.out.println("gameOver: " + gameOver);
  //tetris.updateCoords();
  
  //tetris.display();
  //System.out.println(tetris);
  //System.out.println(currentPiece);
  
}
