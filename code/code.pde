

//int ronStep = 5; //Lo mettiamo nella classe, quindi non serve più
Edificio castle;
Personaggio ron;


void setup() {
  fullScreen(P3D);
  castle = new Edificio();
  ron = new Personaggio();
  castle.edificio = loadShape("castle.obj"); 
  castle.x = 100; //Assegnamo il valore alle posizioni
  castle.y = 200;
  ron.personaggio = loadShape("ron.obj");
  ron.x = 300;
  ron.y = 400;
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
  float step;
  
  void disegna() {
    shape(personaggio, x, y); //Le usiamo per disegnare
  }
  
  void muovi(){ //Intanto cominciamo così
    if (x < width * 0.9) { //è il 90%
      x += step;
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

//Scusa se ho cancellato i numeri originali
