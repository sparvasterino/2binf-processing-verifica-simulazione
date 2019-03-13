float posY; //Queste variabili, di chi sono? Del personaggio o dell'edificio? Prova a metterle nella classe. Sono inutili?
float posX; //Queste variabili, di chi sono? Del personaggio o dell'edificio? Prova a metterle nella classe. Sono inutili?
float personaggio; //A cosa serve?
float edificio; //Stessa domanda
int ron_move = 5; //Esempio nome di una variabile: "ronMove",
//ron_move è sbagliato concettualmente, il nome non ha un senso logico: intendevi "ronStep"?

Edificio castle;
Personaggio ron;


void setup() {
  fullScreen(P3D);
  castle = new Edificio();
  ron = new Personaggio();
  castle.edificio = loadShape("castle.obj"); //castello questo commento è inutile, è chiaro che carichi un castello
  ron.personaggio = loadShape("ron.obj");    //ron lo stesso di sopra
}

void draw() {
  background(0, 0, 255);
  lights();

  castle.disegna(width * 0.9, height * 0.5);


  ron.disegna(width * 0.1, height * 0.5);
  //if(ron.personaggio > w // Questo "if" non è completo, io lo commenterei
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
