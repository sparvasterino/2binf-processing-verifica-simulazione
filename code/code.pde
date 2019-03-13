Edificio castle;
Personaggio ron;

void setup() {
  fullScreen(P3D);
  castle = new Edificio();
  ron = new Personaggio();
  castle.edificio = loadShape("castle.obj"); 
  castle.x = width *0.9;
  castle.y = height *0.5;

  ron.personaggio = loadShape("ron.obj");

  ron.x = width *0.1;
  ron.y = height *0.5;
}

void draw() {
  background(0, 0, 255);
  lights();

  castle.disegna();

  if (mousePressed) { //Qualcosa del genere
    ron.confundo();
  } else {
    ron.muovi();
  }
  ron.disegna();
}


class Personaggio {
  PShape personaggio;
  float x, y;
  float step = 5;
  PShape shape;
  void disegna() {
    shape(personaggio, x, y);
    personaggio.setFill(color(255, 0, 0));
  }

  void muovi() {
    if (x < width * 0.9) {
      x = x + step;
      if (x > width * 0.9) 
        step = 0;
    }
  }
  void spasmi() {
    shape.resetMatrix();
    shape.rotateY(radians(90));
    this.x += 5;
  }
  void confundo() { 
    shape.resetMatrix();
    shape.rotateX(radians(random(360)));
    shape.rotateY(radians(random(360)));
  }
}

class Edificio {
  PShape edificio;
  float x, y;

  void disegna() {
    shape(edificio, x, y);
  }
}
