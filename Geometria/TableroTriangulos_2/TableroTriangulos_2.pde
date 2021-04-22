float r;

int [] angulo = new int [4];
int [][] selectAngulo = new int [4][4];

void setup() {
  size(800, 800);

  angulo[0] = 0;
  angulo[1] = 90;
  angulo[2] = 180;
  angulo[3] = 270;

  for (int i = 0; i<4; i++) {
    for (int j = 0; j<4; j++) {
      selectAngulo[i][j] = (angulo[(int)random(0, 4)]);
    }
  }
  
}

void draw() {
  background(255);

  if (frameCount%30==0) {
    r += 45;
  }

  for (int i = 0; i<4; i++) {
    for (int j = 0; j<4; j++) {
      moduloTriangulos(i*200+50, j*200+50, 150, r);
    }
  }
}

void moduloTriangulos(int posX, int posY, float tam, float r) {
  for (int i = 0; i<4; i++) {
    for (int j = 0; j<4; j++) {
      //noFill();
      //rect(width/2, height/2, 150,150);
      fill(0);
      trianguloIndividual(i*tam/4+posX, j*tam/4+posY, tam, selectAngulo[i][j]+r);
    }
  }
}

void trianguloIndividual(float posX, float posY, float tam, float rot) {
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
