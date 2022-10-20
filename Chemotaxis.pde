int x = 150;
int y = 150;
Chem[] bob;
void setup() {
  size(500,500);
  bob = new Chem[50];
  for(int i = 0; i < bob.length; i++) {
    bob[i] = new Chem();
    
  }
}
void draw() {
  background(0);
  for(int i = 0; i < bob.length; i++) {
    bob[i].show();
    bob[i].chem();
    bob[i].inflate();
  }
  
    
      
}

class Chem {
  /*int mySize, myX, myY;
  Chem() {
    mySize = 5;
    myX = myY = 250;
}*/
color myC;
  float myX, myY, myXspeed, mySize;
  Chem(){
    myC = color(255);
    myX = width/2;
    myY = height/2;
    myXspeed = 1;
  }
  void chem() {
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;
  }
  void show() {
    fill((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250));
    ellipse(x,myY,mySize,mySize);
    //ellipse(x,200, 60, 60);
      if(mouseX > x) 
        x = x + (int)(Math.random()*5)-1;
      
      else 
        x = x + (int)(Math.random()*5)-3;
        
      /*if(mouseX > y) 
        x = x + (int)(Math.random()*5)-1;
      
      else 
        x = x + (int)(Math.random()*5)-3;*/     
  }
  void inflate() {
    mySize = mySize + 1;
  }    
} 
