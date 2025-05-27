public class Piece{
  public Tile[] tiles = new Tile[4];
  public static int  I = 0;
  public static int O = 1;
  public static int L = 2;
  public static int J = 3;
  public static int S = 4;
  public static int Z = 5;
  public static int T = 6;
  
  public Piece(){
    int rand = (int)(Math.random() * 7);
    Piece(rand);
}
  public Piece(int val){
    
  }
  
