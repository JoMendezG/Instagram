float r;

void setup() {
  size(800, 800);
}

void draw() {
  background(255);

  r++;

  for (int i = 0; i<4; i++) {
    for (int j = 0; j<4; j++) {
      moduloTriangulos(i*200+100, j*200+100, 150);
    }
  }
  
  //popMatrix();
}

void moduloTriangulos(int posX, int posY, int tam) {
  fill(255);
  rectMode(CENTER);
  rect(posX, posY, tam, tam);

  // 4 triangulos sup izquierda
  for (int i=0; i<2; i++) {
    for (int j=0; j<2; j++) {
      trianguloIndividual(i*tam/4+posX-tam/2.7, j*tam/4+posY-tam/2.7, 150, 0);
    }
  }

  // 4 triangulos sup derecha
  for (int i=0; i<2; i++) {
    for (int j=0; j<2; j++) {
      trianguloIndividual(i*tam/4+posX+tam/7.5, j*tam/4+posY-tam/2.7, 150, 90);
    }
  }

  // 4 triangulos inf derecha
  for (int i=0; i<2; i++) {
    for (int j=0; j<2; j++) {
      trianguloIndividual(i*tam/4+posX+tam/7.5, j*tam/4+posY+tam/7.5, 150, 180);
    }
  }

  // 4 triangulos inf izquierda
  for (int i=0; i<2; i++) {
    for (int j=0; j<2; j++) {
      trianguloIndividual(i*tam/4+posX-tam/2.7, j*tam/4+posY+tam/7.5, 150, 270);
    }
  }
}

void trianguloIndividual(float posX, float posY, int tam, float rot) {
  pushMatrix();
  translate(posX, posY);
  rotate(radians(rot));
  fill(0);
  triangle(-tam/8, tam/8, -tam/8, -tam/8, tam/8, -tam/8);
  popMatrix();
}
