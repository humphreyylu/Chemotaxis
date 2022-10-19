
int x = (int)(Math.random()*300);
int y = (int)(Math.random()*300);
boolean alive = true;
Chem[] bob;


void setup() {
  frameRate(3);
  size(500,500);
  bob = new Chem[20];
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
  if(alive == true) {
    ellipse(x,y,50,50);
  }
  if(get(mouseX,mouseY)!=color(255,0,0)) {
    alive = false;
  }
  /*if(mouseX > x) {
    x+=(int)(Math.random()*5)-1;
  }
  else {
    x+=(int)(Math.random()*5)-3;
  }*/
}

class Chem {
  int mySize, myX, myY;
  Chem() {
    mySize = 10;
    myX = 250;
    myY = 250;
}
  void chem() {
    myX = (int)(Math.random()*500);//*7)-3;
    myY = (int)(Math.random()*500);//*7)-3;
  }
  void show() {
    fill(255,255,255);//(int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250));
    ellipse(myX,myY,50,50);
  }
  void inflate() {
    mySize = mySize + 1;
  }    
} 
