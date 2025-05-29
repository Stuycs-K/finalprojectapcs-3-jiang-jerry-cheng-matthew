public class Piece {
  public Tile[] tiles = new Tile[4];
  public int[][][] rotations = new int[6][3][3];
  public final int T = 0;
  public final int O = 1;
  public final int L = 2;
  public final int J = 3;
  public final int S = 4;
  public final int Z = 5;
  public final int I = 6;

  public Piece() {
    this((int)(Math.random() * 7));
  }
  public Piece(int val) {
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
      tiles[0] = new Tile(yCenter, xCenter+1,Color);
      tiles[1] = new Tile(yCenter,xCenter-1,Color);
      tiles[2] = new Tile(yCenter,xCenter,Color);
      tiles[3] = new Tile(yCenter,xCenter+2,Color);
    }
    displayTiles();
  }
  
  public void displayTiles(){
    for(int i = 0; i < tiles.length; i++){
      //fill(tiles[i].getColor());
      //square(tiles[i].getX(),tiles[i].getY(),SQUARE_SIZE);
      tiles[i].display();
      }
  }
}
