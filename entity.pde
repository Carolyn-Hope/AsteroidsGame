public class entity{
  protected double heading, force, vX, vY;
  public float myX, myY;
  entity(){
    heading = 0;
    vX = 0;
    vY = 0;
    force = 0;
    myX = width/2;
    myY = height/2;
    
  }
  
  public void move(){
    myX += (float)vX;
    myY += (float)vY;
    accelerate();
  }
  public void accelerate(){
    vX += (force * Math.cos(heading));
    vY += (force * -Math.sin(heading));
  }






}
