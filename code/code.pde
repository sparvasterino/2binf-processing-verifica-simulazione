float posY;
float posX;
float personaggio;


Personaggio castle;
Personaggio ron;


void setup() {
  fullScreen(P3D);
  castle = new Personaggio();
  ron = new Personaggio();
  castle.personaggio = loadShape("castle.obj"); //castello
  ron.personaggio = loadShape("ron.obj");    //ron
}

void draw() {
  background(0, 0, 255);
  lights();
  castle.disegna(width * 0.1, height * 0.9);
  ron.disegna(width * 0.5, height * 0.1);
}

class Personaggio {
  PShape personaggio;
  
  void disegna(float posX, float posY) {
    shape(personaggio, posX, posY);
  }
}
