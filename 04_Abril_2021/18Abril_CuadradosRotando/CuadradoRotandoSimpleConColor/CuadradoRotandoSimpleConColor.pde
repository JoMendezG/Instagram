int Cantidad=3;

color [] misColoress = new color [3];

int elegirColor;
color [][] misColores = new color [Cantidad] [Cantidad];


int tamGrande = 200;
int tamPequeno = 100;

float rPos;
float rNeg;


void setup() {
  size(800, 800);
  colorMode(HSB, 360, 100, 100);
  misColoress[0] = color(327, 69, 95);s
  misColoress[1] = color(256, 52, 73);
  misColoress[2] = color(174, 53, 79);

  for (int i=0; i<Cantidad; i++) {
    for (int j=0; j<Cantidad; j++) {
      misColores[i][j] = misColoress[];
    }
  }
}


void draw() {
  background(234, 18, 41);

  rPos+=0.001;
  rNeg-=0.001;

  lnDiagonal(tamPequeno*3, -tamPequeno);
  lnDiagonal(0, 0);
  lnDiagonal(-tamPequeno, tamPequeno*2);
  lnDiagonal(-tamPequeno*2, tamPequeno*4);
  lnDiagonal(-tamPequeno*3, tamPequeno*6);




  //for (int i=0; i<5; i++) {
  //  lnDiagonal(0, i*(tamGrande*2));
  //}


  //noLoop();
}

void cuadradosRotandoG(int posX, int posY, int tam) {
  for (int i = 0; i<10; i++) {
    stroke(0, 0, 100);
    rectMode(CENTER);
    pushMatrix();
    translate(posX, posY);
    rotate(3*i*rPos);
    rect(0, 0, tam-i*20, tam-i*20);
    popMatrix();
  }
}

void cuadradosRotandoP(int posX, int posY, int tam) {
  for (int i = 0; i<10; i++) {
    stroke(0, 0, 100);
    rectMode(CENTER);
    pushMatrix();
    translate(posX, posY);
    rotate(3*i*rNeg);
    rect(0, 0, tam-i*10, tam-i*10);
    popMatrix();
  }
}




void lnDiagonal(int posX, int posY) {

  pushMatrix();
  translate(posX, posY);
  for (int i = 0; i<5; i++) {
    for (int j = 0; j<5; j++) {

      //elegirColor = (misColores[(int)random(0, 3)]);
      fill(misColores[index]);
      cuadradosRotandoG(i*tamGrande+tamGrande/2, i*tamGrande/2+tamGrande/2, tamGrande);

      //fill(elegirColor);
      cuadradosRotandoP(i*tamGrande+tamGrande+tamGrande/4, i*tamPequeno+tamGrande/4, tamPequeno);
    }
  }
  popMatrix();
}

void colores() {
}
