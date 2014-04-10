class obstacle
{
public color obstacleColor;
public PVector position;
public int sizex;
public int sizey;
public int size;

public obstacle (color obstacleColor, float x, float y)
{
this.obstacleColor=obstacleColor;
position = new PVector(x, y);
sizex = 200;
sizey = 100;

}

public void draw()

{
rectMode(CENTER);
rect(position.x, position.y, sizex, sizey);
fill(obstacleColor);
}

public boolean pointInObstacle(float x, float y)
{
PVector point = new PVector(x,y);
float distance = point.dist(position);
if (distance==size) return true;
else return false;
}
 
}
