public void setup()
{
  size(600, 600);  
  background(255);
  noLoop();
}

public void draw()
{
  background(255);
  Cluster c = new Cluster(5, 300, 300, 50); // initial number of segments in the tendril and starting (x,y) coordinate
  c.show();
}
public void mousePressed()
{
  redraw();
}
