public static int SQUARE_SIZE = 40;
public color BLUE = color(0, 0, 255);
void setup(){
  size(1000, 1000);
  Tile a = new Tile(0,0, color(0, 255, 0));
  a.display();
  Tile b = new Tile(1,0, color(255, 0, 0));
  b.display();
  for (int i = 0; i < 10; i++){
    Tile c = new Tile(i, 0, color(255, 0, 0));
    c.display();
  }
  Board test = new Board();
  test.display();
  test.setTile(new Tile(0, 0, BLUE));
  test.display();
  
}
