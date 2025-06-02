public class Piece {
  private Tile[] tiles = new Tile[4];
  private Tile[][][] rotations = new Tile[6][4][4];
  private Tile[][] rotationsI = new Tile[4][4];
  private final int T = 0;
  private final int L = 1;
  private final int J = 2;
  private final int S = 3;
  private final int Z = 4;
  private final int I = 5;
  private final int O = 6;
  private int valPiece;
  private int currentX;
  private int currentY;

  public Piece() {
    this((int)(Math.random()*7));
  }
  public Piece(int val) {
    valPiece = val;
    int xCenter = 5;
    int yCenter =0;
    if (val == T) {
      color Color = color(160, 32, 240);
      //tiles[0] = new Tile(xCenter, yCenter, Color);
      //tiles[1] = new Tile(xCenter, yCenter+ 1*SQUARE_SIZE, Color);
      //tiles[2] = new Tile(xCenter -1*SQUARE_SIZE, yCenter + 1 * SQUARE_SIZE, Color);
      //tiles[3] = new Tile(xCenter +1*SQUARE_SIZE, yCenter+ 1*SQUARE_SIZE, Color);
      tiles[0] = new Tile(yCenter, xCenter,Color);
      tiles[1] = new Tile(yCenter+1,xCenter,Color);
      tiles[2] = new Tile(yCenter+1,xCenter-1,Color);
      tiles[3] = new Tile(yCenter+1,xCenter+1,Color);
    }
    if (val == O) {
      color Color = color(255, 255, 0);
      //tiles[0] = new Tile(xCenter, yCenter, Color);
      //tiles[1] = new Tile(xCenter, yCenter + 1*SQUARE_SIZE, Color);
      //tiles[2] = new Tile(xCenter-1*SQUARE_SIZE, yCenter, Color);
      //tiles[3] = new Tile(xCenter-1*SQUARE_SIZE, yCenter+1*SQUARE_SIZE, Color);
      tiles[0] = new Tile(yCenter, xCenter,Color);
      tiles[1] = new Tile(yCenter+1,xCenter,Color);
      tiles[2] = new Tile(yCenter,xCenter-1,Color);
      tiles[3] = new Tile(yCenter+1,xCenter-1,Color);
    }
    if (val == L) {
      color Color = color(255, 165, 0);
      //tiles[0] = new Tile(xCenter, yCenter, Color);
      //tiles[1] = new Tile(xCenter+1*SQUARE_SIZE, yCenter + 1*SQUARE_SIZE, Color);
      //tiles[2] = new Tile(xCenter+1*SQUARE_SIZE, yCenter, Color);
      //tiles[3] = new Tile(xCenter-1*SQUARE_SIZE, yCenter, Color);
      tiles[0] = new Tile(yCenter, xCenter,Color);
      tiles[1] = new Tile(yCenter+1,xCenter+1,Color);
      tiles[2] = new Tile(yCenter,xCenter+1,Color);
      tiles[3] = new Tile(yCenter,xCenter-1,Color);
    }
    if (val == J) {
      color Color = color(0, 0, 255);
      //tiles[0] = new Tile(xCenter, yCenter, Color);
      //tiles[1] = new Tile(xCenter-1*SQUARE_SIZE, yCenter + 1*SQUARE_SIZE, Color);
      //tiles[2] = new Tile(xCenter+1*SQUARE_SIZE, yCenter, Color);
      //tiles[3] = new Tile(xCenter-1*SQUARE_SIZE, yCenter, Color);
      tiles[0] = new Tile(yCenter, xCenter,Color);
      tiles[1] = new Tile(yCenter+1,xCenter-1,Color);
      tiles[2] = new Tile(yCenter,xCenter+1,Color);
      tiles[3] = new Tile(yCenter,xCenter-1,Color);
    }
    if (val == S) {
      color Color = color(255, 0, 0);
      //tiles[0] = new Tile(xCenter, yCenter, Color);
      //tiles[1] = new Tile(xCenter+1*SQUARE_SIZE, yCenter + 1*SQUARE_SIZE, Color);
      //tiles[2] = new Tile(xCenter, yCenter+1*SQUARE_SIZE, Color);
      //tiles[3] = new Tile(xCenter-1*SQUARE_SIZE, yCenter, Color);
      tiles[0] = new Tile(yCenter, xCenter,Color);
      tiles[1] = new Tile(yCenter+1,xCenter+1,Color);
      tiles[2] = new Tile(yCenter+1,xCenter,Color);
      tiles[3] = new Tile(yCenter,xCenter-1,Color);
    }
    if (val == Z) {
      color Color = color(0, 255, 0);
      //tiles[0] = new Tile(xCenter, yCenter, Color);
      //tiles[1] = new Tile(xCenter, yCenter + 1*SQUARE_SIZE, Color);
      //tiles[2] = new Tile(xCenter-1*SQUARE_SIZE, yCenter+1*SQUARE_SIZE, Color);
      //tiles[3] = new Tile(xCenter+1*SQUARE_SIZE, yCenter, Color);
      tiles[0] = new Tile(yCenter, xCenter,Color);
      tiles[1] = new Tile(yCenter+1,xCenter,Color);
      tiles[2] = new Tile(yCenter+1,xCenter-1,Color);
      tiles[3] = new Tile(yCenter,xCenter+1,Color);
      
      
    }
    if (val == I) {
      color Color = color(173,216,230);
      //tiles[0] = new Tile(yCenter, xCenter, Color);
      //tiles[1] = new Tile(yCenter, xCenter -2 , Color);
      //tiles[2] = new Tile(yCenter, xCenter - 1, Color);
      //tiles[3] = new Tile(yCenter, xCenter+1, Color);
      //tiles[0] = new Tile(xCenter, yCenter, Color);
      //tiles[1] = new Tile(xCenter+1*SQUARE_SIZE,yCenter, Color);
      //tiles[2] = new Tile(xCenter+2*SQUARE_SIZE, yCenter, Color);
      //tiles[3] = new Tile(xCenter-1*SQUARE_SIZE, yCenter, Color);
      tiles[2] = new Tile(yCenter, xCenter+1,Color);
      tiles[1] = new Tile(yCenter,xCenter-1,Color);
      tiles[0] = new Tile(yCenter,xCenter,Color);
      tiles[3] = new Tile(yCenter,xCenter+2,Color);
    }
    currentX =tiles[0].getY();
    currentY = tiles[0].getX();
    displayTiles();
    fillRotations();
  }
  
  public void displayTiles(){
    for(int i = 0; i < tiles.length; i++){
      //fill(tiles[i].getColor());
      //square(tiles[i].getX(),tiles[i].getY(),SQUARE_SIZE);
      tiles[i].display();
      }
  }
  
  public void rotate(int current){
    if (valPiece == O){
    }
    else{
    fillRotations();
    int hold = Math.abs(current) % 4;
    for(int i =0; i < tiles.length; i++){
      if(valPiece == I){
        tiles[i] = rotationsI[hold][i];
      }
      else{
        tiles[i] = rotations[valPiece][hold][i];
      }
      
    }
    }
  }
  public void fillRotations(){
    
    
    color Color;
    for(int i = 0; i < 6; i++){
      currentX =tiles[0].getY();
    currentY = tiles[0].getX();
      if(currentY - 2 < 0){
        currentY = 1;
      }
      if( currentX - 2 < 0){
        currentX = 1;
      }
      if(currentX + 2 > 10){
        currentX = 8;
      }
      if(currentY + 4 > 20 ){
        currentY = 16;
      }
      if (i == 0){
        Color = color(160, 32, 240);
        rotations[i][0][0] = new Tile(currentY, currentX,Color);
        rotations[i][0][1] = new Tile(currentY+1,currentX,Color);
        rotations[i][0][2] = new Tile(currentY+1,currentX-1,Color);
        rotations[i][0][3] = new Tile(currentY+1,currentX+1,Color);
        rotations[i][1][0] = new Tile(currentY, currentX,Color);
        rotations[i][1][1] = new Tile(currentY,currentX-1,Color);
        rotations[i][1][2] = new Tile(currentY-1,currentX-1,Color);
        rotations[i][1][3] = new Tile(currentY+1,currentX-1,Color);
        rotations[i][2][0] = new Tile(currentY, currentX,Color);
        rotations[i][2][1] = new Tile(currentY-1,currentX,Color);
        rotations[i][2][2] = new Tile(currentY-1,currentX-1,Color);
        rotations[i][2][3] = new Tile(currentY-1,currentX+1,Color);
        rotations[i][3][0] = new Tile(currentY, currentX,Color);
        rotations[i][3][1] = new Tile(currentY,currentX+1,Color);
        rotations[i][3][2] = new Tile(currentY-1,currentX+1,Color);
        rotations[i][3][3] = new Tile(currentY+1,currentX+1,Color);
      }
      if( i == 1){
        Color = color(255,165,0);
        rotations[i][0][0] = new Tile(currentY, currentX+1,Color);
        rotations[i][0][1] = new Tile(currentY-1,currentX+1,Color);
        rotations[i][0][2] = new Tile(currentY-1,currentX,Color);
        rotations[i][0][3] = new Tile(currentY-1,currentX-1,Color);
        rotations[i][1][0] = new Tile(currentY-1, currentX,Color);
        rotations[i][1][1] = new Tile(currentY-1,currentX-1,Color);
        rotations[i][1][2] = new Tile(currentY,currentX-1,Color);
        rotations[i][1][3] = new Tile(currentY+1,currentX-1,Color);
        rotations[i][2][0] = new Tile(currentY, currentX-1,Color);
        rotations[i][2][1] = new Tile(currentY+1,currentX-1,Color);
        rotations[i][2][2] = new Tile(currentY+1,currentX,Color);
        rotations[i][2][3] = new Tile(currentY+1,currentX+1,Color);
        rotations[i][3][0] = new Tile(currentY+1, currentX,Color);
        rotations[i][3][1] = new Tile(currentY+1,currentX+1,Color);
        rotations[i][3][2] = new Tile(currentY,currentX+1,Color);
        rotations[i][3][3] = new Tile(currentY-1,currentX+1,Color);
      }
      if( i == 2){
        Color = color(0,0,255);
        rotations[i][0][0] = new Tile(currentY, currentX-1,Color);
        rotations[i][0][1] = new Tile(currentY-1,currentX-1,Color);
        rotations[i][0][2] = new Tile(currentY-1,currentX,Color);
        rotations[i][0][3] = new Tile(currentY-1,currentX+1,Color);
        rotations[i][1][0] = new Tile(currentY+1, currentX,Color);
        rotations[i][1][1] = new Tile(currentY+1,currentX-1,Color);
        rotations[i][1][2] = new Tile(currentY,currentX-1,Color);
        rotations[i][1][3] = new Tile(currentY-1,currentX-1,Color);
        rotations[i][2][0] = new Tile(currentY, currentX+1,Color);
        rotations[i][2][1] = new Tile(currentY+1,currentX+1,Color);
        rotations[i][2][2] = new Tile(currentY+1,currentX,Color);
        rotations[i][2][3] = new Tile(currentY+1,currentX-1,Color);
        rotations[i][3][0] = new Tile(currentY-1, currentX,Color);
        rotations[i][3][1] = new Tile(currentY-1,currentX+1,Color);
        rotations[i][3][2] = new Tile(currentY,currentX+1,Color);
        rotations[i][3][3] = new Tile(currentY+1,currentX+1,Color);
      }
      if( i == 3){
        Color = color(255,0,0);
        rotations[i][0][0] = new Tile(currentY, currentX,Color);
        rotations[i][0][1] = new Tile(currentY,currentX+1,Color);
        rotations[i][0][2] = new Tile(currentY+1,currentX,Color);
        rotations[i][0][3] = new Tile(currentY+1,currentX-1,Color);
        rotations[i][1][0] = new Tile(currentY, currentX,Color);
        rotations[i][1][1] = new Tile(currentY+1,currentX,Color);
        rotations[i][1][2] = new Tile(currentY,currentX-1,Color);
        rotations[i][1][3] = new Tile(currentY-1,currentX-1,Color);
        rotations[i][2][0] = new Tile(currentY-1, currentX,Color);
        rotations[i][2][1] = new Tile(currentY-1,currentX+1,Color);
        rotations[i][2][2] = new Tile(currentY,currentX,Color);
        rotations[i][2][3] = new Tile(currentY,currentX-1,Color);
        rotations[i][3][0] = new Tile(currentY, currentX+1,Color);
        rotations[i][3][1] = new Tile(currentY+1,currentX+1,Color);
        rotations[i][3][2] = new Tile(currentY,currentX,Color);
        rotations[i][3][3] = new Tile(currentY-1,currentX,Color);
      }
      if( i == 4){
        Color = color(0,255,0);
        rotations[i][0][0] = new Tile(currentY, currentX,Color);
        rotations[i][0][1] = new Tile(currentY,currentX-1,Color);
        rotations[i][0][2] = new Tile(currentY+1,currentX,Color);
        rotations[i][0][3] = new Tile(currentY+1,currentX+1,Color);
        rotations[i][1][0] = new Tile(currentY, currentX,Color);
        rotations[i][1][1] = new Tile(currentY-1,currentX,Color);
        rotations[i][1][2] = new Tile(currentY,currentX-1,Color);
        rotations[i][1][3] = new Tile(currentY+1,currentX-1,Color);
        rotations[i][2][0] = new Tile(currentY-1, currentX,Color);
        rotations[i][2][1] = new Tile(currentY-1,currentX-1,Color);
        rotations[i][2][2] = new Tile(currentY,currentX,Color);
        rotations[i][2][3] = new Tile(currentY,currentX+1,Color);
        rotations[i][3][0] = new Tile(currentY, currentX+1,Color);
        rotations[i][3][1] = new Tile(currentY-1,currentX+1,Color);
        rotations[i][3][2] = new Tile(currentY,currentX,Color);
        rotations[i][3][3] = new Tile(currentY+1,currentX,Color);
      }
      if(i == 5){
         Color = color(173,216,230);
         rotationsI[0][0] = new Tile(currentY,currentX,Color);
         rotationsI[0][1]= new Tile(currentY,currentX-1,Color);
         rotationsI[0][2] = new Tile(currentY, currentX+1,Color);
         rotationsI[0][3] = new Tile(currentY,currentX+2,Color);
         rotationsI[1][0] = new Tile(currentY+1,currentX,Color);
         rotationsI[1][1]= new Tile(currentY,currentX,Color);
         rotationsI[1][2] = new Tile(currentY+2, currentX,Color);
         rotationsI[1][3] = new Tile(currentY+3,currentX,Color);
         rotationsI[2][0] = new Tile(currentY,currentX,Color);
         rotationsI[2][1]= new Tile(currentY,currentX-1,Color);
         rotationsI[2][2] = new Tile(currentY, currentX+1,Color);
         rotationsI[2][3] = new Tile(currentY,currentX+2,Color);
         rotationsI[3][0] = new Tile(currentY+1,currentX,Color);
         rotationsI[3][1]= new Tile(currentY,currentX,Color);
         rotationsI[3][2] = new Tile(currentY+2, currentX,Color);
         rotationsI[3][3] = new Tile(currentY+3,currentX,Color);
      }
    }
  }
  
  public void applyGravity(){
    boolean collide = false;
    for (int i = 0; i< tiles.length;i++){
       if(tiles[i].getX()>Game.tetris.tileBoard.size()-2){
        collide = true;
        break;
        //System.out.println(this);
      }else{
        if (Game.tetris.isOccupied(tiles[i].getX() + 1, tiles[i].getY())){
          collide = true;
          break;
        }
      }
      
    }
    if (collide){
      Game.tetris.setPiece(this);
      if (Game.gameOver){
        
      }else{
        Game.currentPiece = new Piece();
      }
      
    }else{
      for (int i = 0; i< tiles.length;i++){
         tiles[i].setX(tiles[i].getX()+1);
      }
    }
  }
  
  
  public void moveLeft(){
    boolean collide = false;
    for (int i = 0; i< tiles.length;i++){
      if (tiles[i].getY() < 1){
        collide = true;
        break;
        //System.out.println(this);
      }else{
        if (Game.tetris.isOccupied(tiles[i].getX(), tiles[i].getY() -1)){
          collide = true;
          break;
        }
      }
      
    }
    if (collide){
      //Game.tetris.setPiece(this);
      
    }else{
      for (int i = 0; i< tiles.length;i++){
         tiles[i].setY(tiles[i].getY()-1);
      }
    }
  }
  
  public void moveRight(){
    boolean collide = false;
    for (int i = 0; i< tiles.length;i++){
      if (tiles[i].getY() > Game.tetris.tileBoard.get(0).length -2){
        collide = true;
        break;
        //System.out.println(this);
      }else{
        if (Game.tetris.isOccupied(tiles[i].getX(), tiles[i].getY() +1)){
          collide = true;
          break;
        }
      }
      
    }
    if (collide){
      //Game.tetris.setPiece(this);
      
    }else{
      for (int i = 0; i< tiles.length;i++){
         tiles[i].setY(tiles[i].getY()+1);
      }
    }
  }
  
  
  public String toString(){
    String printed = "";
    for (int i = 0; i< tiles.length; i++){
      printed += tiles[i].toString();
    }
    return printed;
  }
}
