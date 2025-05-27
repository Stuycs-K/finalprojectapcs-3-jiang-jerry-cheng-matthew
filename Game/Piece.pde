public class Piece{
  public Tile[] tiles = new Tile[4];
  public int[][][] rotations = new int[6][3][3];
  public static int T = 0;
  public static int O = 1;
  public static int L = 2;
  public static int J = 3;
  public static int S = 4;
  public static int Z = 5;
  public static int I = 6;
  
  public Piece(){
    int rand = (int)(Math.random() * 7);
    Piece(rand);
}
  public Piece(int val){
    if (val == T){}
    if (val == O){}
    if (val == L){}
    if (val == J){}
    if (val == S){}
    if (val == Z){}
    if (val == I){}
    
  }
  
