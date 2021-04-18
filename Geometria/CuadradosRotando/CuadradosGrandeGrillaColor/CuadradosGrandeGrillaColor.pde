int Cantidad=6;

color [] misColoress = new color [6];

int elegirColor;
color [][] misColores = new color [Cantidad] [Cantidad];


int tamGrande = 200;
int tamPequeno = 100;

float rPos;
float rNeg;


void setup() {
  size(800, 800);
  colorMode(HSB, 360, 100, 100);
  misColoress[0] = color(327, 69, 95);
  misColoress[1] = color(256, 52, 73);
  misColoress[2] = color(174, 53, 79);
  misColoress[3] = color(327, 69, 94);
  misColoress[4] = color(256, 52, 74);
  misColoress[5] = color(174, 53, 80);

  for (int i=0; i<Cantidad; i++) {
    for (int j=0; j<Cantidad; j++) {
      misColores[i][j] =(misColoress[(int)random(0, 6)]);
    }
  }
}


void draw() {
  background(234, 18, 41);

  rPos+=0.001;
  rNeg-=0.001;

  //lnDiagonal(tamPequeno*3, -tamPequeno);
  //lnDiagonal(0, 0);
  //lnDiagonal(-tamPequeno, tamPequeno*2);
  //lnDiagonal(-tamPequeno*2, tamPequeno*4);
  //lnDiagonal(-tamPequeno*3, tamPequeno*6);

  CuadradosEnLn();


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

void CuadradosEnLn() {
  for (int i=0; i<Cantidad; i++) {
    for (int j=0; j<Cantidad; j++) {
      pushMatrix();
      translate(0, j*tamPequeno*5);
      fill(misColores[i][j]);
      cuadradosRotandoG(i*tamGrande+tamPequeno, i*tamPequeno+tamPequeno, tamGrande);
      popMatrix();

      pushMatrix();
      translate(0, j*tamPequeno*5-tamPequeno*5);
      fill(misColores[i][j]);
      cuadradosRotandoG(i*tamGrande, i*tamPequeno+tamPequeno*3, tamGrande);
      popMatrix();
    }
  }
}


void lnDiagonal(int posX, int posY) {

  pushMatrix();
  translate(posX, posY);
  for (int i = 0; i<6; i++) {
    for (int j = 0; j<6; j++) {

      //elegirColor = (misColores[(int)random(0, 3)]);
      fill(misColores[i][j]);
      cuadradosRotandoG(i*tamGrande+tamGrande/2, i*tamGrande/2+tamGrande/2, tamGrande);

      //fill(elegirColor);
      cuadradosRotandoP(i*tamGrande+tamGrande+tamGrande/4, i*tamPequeno+tamGrande/4, tamPequeno);
    }
  }
  popMatrix();
}

void colores() {
}
