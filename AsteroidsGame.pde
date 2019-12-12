public ArrayList<entity> entities = new ArrayList<entity>(); 
Spaceship me = new Spaceship(400,400); 

public void setup(){
  size(800,800);
  
}
public void draw(){
  background(0);
  me.update();
}
