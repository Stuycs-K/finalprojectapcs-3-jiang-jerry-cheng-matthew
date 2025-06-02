public static int SQUARE_SIZE = 40;
public color BLUE = color(0, 0, 255);
private static Board tetris;
private static Piece currentPiece;


private static boolean gameOver;
private static int gameSpeed;
private static int originalGameSpeed;
private static boolean isSoftDrop;

void setup(){
  size(1000, 1000);
  gameOver = false;
  tetris = new Board();
  currentPiece = new Piece();
  gameSpeed = 20;
  originalGameSpeed = 20;
  isSoftDrop = false;
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

  if(key == 'k'){
    currentPiece.current++;
    currentPiece.rotate();
    Game.tetris.clearBackground();
    Game.tetris.display();
    Game.currentPiece.displayTiles();
    
  }
  if(key == 'j'){
    currentPiece.current--;
    currentPiece.rotate();
    Game.tetris.clearBackground();
    Game.tetris.display();
    Game.currentPiece.displayTiles();
    
  }
  if(key == 'l'){
    currentPiece.current+= 2;
    currentPiece.rotate();
    Game.tetris.clearBackground();
    Game.tetris.display();
    Game.currentPiece.displayTiles();
    
  }

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
  if (key == 's'){
    if (isSoftDrop){
      
    }else{
      
      gameSpeed /= 3;
      isSoftDrop = true;
    }
  }
  

}
void keyReleased() {
  if (key == 's') {
    gameSpeed = originalGameSpeed;
    isSoftDrop = false;
  }
}

void draw(){
  

  if (frameCount % gameSpeed == 0 && !gameOver){

    tetris.tick();

    tetris.clearBackground();
    
    tetris.display();
    currentPiece.displayTiles();
    
  }


    
  
  
  

  System.out.println("gameOver: " + gameOver);
}


  //tetris.updateCoords();
  
  //tetris.display();
  //System.out.println(tetris);
  //System.out.println(currentPiece);
  
