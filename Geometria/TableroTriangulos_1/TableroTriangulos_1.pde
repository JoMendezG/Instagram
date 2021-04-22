float r;
float girar;

void setup() {
  size(800, 800);
}

void draw() {
  background(255);

   for (int i = 0; i<4; i++) {
    for (int j = 0; j<4; j++) {
      girar=90*i;
      moduloTriangulos(i*200+100, j*200+100, 150, girar*i+r);
    }
  }
  
  if (frameCount%30==0) {
  r += 45;
}
  
  //popMatrix();
}

void moduloTriangulos(int posX, int posY, float tam, float r) {
  fill(255);
  rectMode(CENTER);
  //rect(posX, posY, tam, tam);

  // 4 triangulos sup izquierda
  for (int i=0; i<2; i++) {
    for (int j=0; j<2; j++) {
      trianguloIndividual(i*tam/4+posX-tam/2.8, j*tam/4+posY-tam/2.8, 150, 0+r);
    }
  }

  // 4 triangulos sup derecha
  for (int i=0; i<2; i++) {
    for (int j=0; j<2; j++) {
      trianguloIndividual(i*tam/4+posX+tam/7.5, j*tam/4+posY-tam/2.8, 150, 90+r);
    }
  }

  // 4 triangulos inf derecha
  for (int i=0; i<2; i++) {
    for (int j=0; j<2; j++) {
      trianguloIndividual(i*tam/4+posX+tam/7.5, j*tam/4+posY+tam/7.5, 150, 180+r);
    }
  }

  // 4 triangulos inf izquierda
  for (int i=0; i<2; i++) {
    for (int j=0; j<2; j++) {
      trianguloIndividual(i*tam/4+posX-tam/2.8, j*tam/4+posY+tam/7.5, 150, 270+r);
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

void keyPressed() {
  if (key == '1') {
    saveFrame("####.png");
  }
}
