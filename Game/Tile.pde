public class Tile{
    private int x;
    private int y;
    private color tileColor;

    public Tile(int x, int y, color tileColor){
        this.x = x;
        this.y = y;
        this.tileColor = tileColor;
    }
    public void setX(int newX){
        x = newX;
    }
    public void setY(int newY){
        y = newY;
    }
    public int getX(){
        return x;
    }
    public int getY(){
        return y;
    }
    public color getColor(){
        return tileColor;
    }
    public void display(){
      fill(tileColor);
      square(y*SQUARE_SIZE+1, x*SQUARE_SIZE+1, SQUARE_SIZE);
    }
    
    public String toString(){
      return " " + getX() + " " + getY() + ", ";
    }
}
