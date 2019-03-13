

float posY;
float posX;
float personaggio;
float edificio;
int ron_move = 5;

Edificio castle;
Personaggio ron ;


void setup() {
  fullScreen(P3D);
  castle = new Edificio();
  ron = new Personaggio();
  castle.edificio = loadShape("castle.obj"); //castello
  ron.personaggio = loadShape("ron.obj");    //ron
}

void draw() {
  background(0, 0, 255);
  lights();

  castle.disegna(width * 0.9, height * 0.5);


  ron.disegna(width * 0.1, height * 0.5);
  if(ron.personaggio > w
  }


class Personaggio {
  PShape personaggio;

  void disegna(float posX, float posY) {
    shape(personaggio, posX, posY);
  }
}
class Edificio {
  PShape edificio;

  void disegna(float posX, float posY) {
    shape(edificio, posX, posY);
  }
}

