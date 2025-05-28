public static int SQUARE_SIZE = 40;
public color BLUE = color(0, 0, 255);
void setup(){
  size(1000, 1000);
  
  Board test = new Board();
  test.display();
  test.setTile(new Tile(0, 1, BLUE));
  test.display();
  test.setTile(new Tile(2, 2, BLUE));
  test.display();
  for (int i = 0; i < 10; i++){
    test.setTile(new Tile(1, i, BLUE));
  }
  
  test.display();
  
  test.clearLines();
  test.clearBackground();
  test.display();
  //System.out.println(test);
  //test.setTile(new Tile(0, 0, BLUE));
  //test.clearBackground();
  //test.display();
  
  //for (int i = 0; i < 10; i++){
  //  test.setTile(new Tile(1, i, BLUE));
  //}
  //test.clearLines();
  //test.clearBackground();
  //test.display();
  System.out.println(test);
  Piece aPiece = new Piece();
}
