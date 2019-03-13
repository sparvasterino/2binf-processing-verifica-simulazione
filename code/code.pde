


Edificio castle;
Personaggio ron;

void setup() {
  fullScreen(P3D);
  castle = new Edificio();
  ron = new Personaggio();
  castle.edificio = loadShape("castle.obj"); 
  castle.x = width *0.9; //Assegnamo il valore alle posizioni
  castle.y = height *0.5;

  ron.personaggio = loadShape("ron.obj");

  ron.x = width *0.1;
  ron.y = height *0.5;
}

void draw() {
  background(0, 0, 255);
  lights();

  castle.disegna(); //Abbiamo le posizioni nella classe

  ron.muovi();
  ron.disegna(); //Abbiamo le posizioni nella classe
}


class Personaggio {
  PShape personaggio;
  float x, y; //Creiamo le variabili
  float step = 5;
  PShape shape;
  void disegna() {
    shape(personaggio, x, y); //Le usiamo per disegnare
    personaggio.setFill(color(255, 0, 0));
  }

  void muovi() { //Intanto cominciamo così
    if (x < width * 0.9) { //è il 90%
      x = x + step;
      if (x > width * 0.9) 
        step = 0;
      void confundo() {
        shape.rotateX(radians(random(360)));
        shape.rotateY(radians(random(360)));
      }
    }
  }
}

class Edificio {
  PShape edificio;
  float x, y;

  void disegna() {
    shape(edificio, x, y); //Stesso lavoro qui!
  }
}
