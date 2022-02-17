public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster
    float leng;
    float myX, myY;
    int myNumSegments;
    float myAngle;
    float endX, endY;
    
    public Cluster(float len, float x, float y, int seg)
    {
      leng = len;  
      myX = x;
      myY = y;
      myNumSegments = seg;
    }
    
    void show(){
      strokeWeight(1.5);
      for (int x = 0; x < 7; x++){
      float startX = myX;
      float startY = myY;
      myAngle += ((2*PI)/7)*x;
      for (int i = 0; i < myNumSegments; i++){
        if (myNumSegments == 10){
          stroke(#FD0B0B);
        } else if (myNumSegments == 2){
          stroke(#FFEC00);
        } else {
          stroke(#00ABFF);
        }
        myAngle += (float)(Math.random()*0.4)-0.2;
        System.out.println(myAngle);
        endX = startX + (float)Math.cos(myAngle) * leng;
        endY = startY + (float)Math.sin(myAngle) * leng;
        line(startX, startY, endX, endY);
        startX = endX;
        startY = endY;
        stroke(#000000);
      }
      if (myNumSegments >= 1){
      Cluster lol = new Cluster(5, endX, endY, myNumSegments/5);
      lol.show();
      } 
      
    }
  }
}
