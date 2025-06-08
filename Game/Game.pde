import java.util.*;
public static int SQUARE_SIZE = 40;
public color BLUE = color(0, 0, 255);
private static Board tetris;
private static Piece currentPiece;


private static boolean gameOver;
private static int gameSpeed;
private static int originalGameSpeed;
private static boolean isSoftDrop;
private static boolean isHardDrop;
private static Piece heldPiece;
private static int score;
private static Piece nextPiece;
private static ArrayList<Piece> bag;

private int[] heights;

void setup(){
  size(1000, 1000);
  gameOver = false;
  tetris = new Board();
  bag = new ArrayList<Piece>();
  currentPiece = new Piece();
  nextPiece = new Piece();
  tetris.next();
  gameSpeed = 20;
  originalGameSpeed = 20;
  isSoftDrop = false;
  isHardDrop = false;
  heights = new int[10];
  heldPiece = null;
  score = 0;
  
  //tetris.setPiece(currentPiece);
  
  tetris.clearBackground();
  tetris.clearLines();

  //currentPiece.applyGravity(1);
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
  if (key == ' '){
    if (!gameOver){
      currentPiece.hardDrop();
      Game.tetris.clearBackground();
      Game.tetris.display();
      Game.currentPiece.displayTiles();
    }
    
  }
  if (key == 'h'){
      hold();
  }
  

}

void hold(){
  if (heldPiece == null){
    heldPiece = new Piece(currentPiece.valPiece);
    currentPiece = new Piece();
  }else{
    int temp = currentPiece.valPiece;
    currentPiece = new Piece(heldPiece.valPiece);
    heldPiece = new Piece(temp);
  }
  Game.tetris.clearBackground();
  Game.tetris.display();
  Game.currentPiece.displayTiles();
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


    
  }


    
  
  
  

}



  
