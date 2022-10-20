Chem[] bob;
Chem[] sue;
void setup() {
  size(500,500);
  bob = new Chem[50];
  for(int i = 0; i < bob.length; i++) {
    bob[i] = new Chem();
    //sue[i] = new Chem(color(255,0,0), 0, 10, 2);
  }
}
void draw() {
  background(0);
  for(int i = 0; i < bob.length; i++) {
    bob[i].show();
    bob[i].chem();
    bob[i].inflate();
    sue[i].show();
    sue[i].chem();
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
  
  void show() {
    fill((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250));
    ellipse(myX,myY,mySize,mySize);
  }
  void chem() {
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;
  }
  void inflate() {
    mySize = mySize + 1;
  }    
} 
