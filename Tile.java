public class Tile{
    private int x;
    private int y;
    private color color;

    public Tile(int x, int y, color color){
        this.x = x;
        this.y = y;
        this.color = color;
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
        return color;
    }
}