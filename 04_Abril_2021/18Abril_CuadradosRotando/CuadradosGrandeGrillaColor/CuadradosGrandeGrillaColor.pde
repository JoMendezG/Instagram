int Cantidad=5;
color [] misColoress = new color [5];
color [][] misColores = new color [Cantidad] [Cantidad];


int tamGrande = 200;
int tamPequeno = 100;

float rPos;
float rNeg;


void setup() {
  size(800, 800);
  colorMode(HSB, 360, 100, 100);
  misColoress[0] = color(351, 27, 100);
  misColoress[1] = color(359, 17, 100);
  misColoress[2] = color(323, 18, 80);
  misColoress[3] = color(260, 16, 67);
  misColoress[4] = color(210, 20, 80);


  for (int i=0; i<Cantidad; i++) {
    for (int j=0; j<Cantidad; j++) {
      misColores[i][j] =(misColoress[(int)random(0, 5)]);
    }
  }
}


void draw() {
  background(234, 18, 41);

  rPos+=0.001;
  rNeg-=0.001;

  CuadradosEnLn();
}

void cuadradosRotandoG(int posX, int posY, int tam) {
  for (int i = 0; i<10; i++) {
    stroke(211, 50, 57);
    //strokeWeight(tam/200-(i*0.1));
    strokeWeight(i*0.2);
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
    //strokeWeight(tam/100-(i*0.1));
    strokeWeight(i*0.2);
    stroke(211, 50, 57);
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

      pushMatrix();
      translate(0, j*tamPequeno*5);
      fill(misColores[i][j]);
      cuadradosRotandoP(i*tamPequeno*2+tamPequeno/2, i*tamPequeno-tamPequeno/2, tamPequeno);
      popMatrix();

      pushMatrix();
      translate(0, j*tamPequeno*5);
      fill(misColores[i][j]);
      cuadradosRotandoP(i*tamPequeno*2+tamPequeno+tamPequeno/2, i*tamPequeno-(tamPequeno*2+tamPequeno/2), tamPequeno);
      popMatrix();
    }
  }
}

void mousePressed() {
  for (int i=0; i<Cantidad; i++) {
    for (int j=0; j<Cantidad; j++) {
      misColores[i][j] =(misColoress[(int)random(0, 5)]);
    }
  }
}

void keyPressed() {
  saveFrame("####.png");
}
