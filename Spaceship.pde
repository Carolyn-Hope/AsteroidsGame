class Spaceship extends entity{   
    Spaceship(float x, float y){
      myX = x;
      myY = y;
    }
    
    public void show(){
      fill(200);
      stroke(0);
      translate(myX,myY);
      rotate(-(float)heading);
      triangle(-4,-4,8,0,-4,4);
      rotate((float)heading);
      translate(-myX,-myY);
    }
    public void update(){
      readInput();
      move();
      show();
    }
    public void readInput(){
      if(keyPressed){
        if(keyCode == UP){
          force = .01;
        }
        else{
          force = 0;
        }
        if(keyCode == LEFT){
          heading += Math.PI / 64;
        }
        if(keyCode == RIGHT){
          heading -= Math.PI / 64;
        }
      
      }
    }
}
