float rotar;

void setup() {
  size(800, 800);
}

void draw() {
  rotar= rotar+0.5;

  background(0);
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j<5; j++){
    pushMatrix();
    translate(i*150+100, j*150+100);
    rotate(radians(random(1,90)));
    estrellaEnLoop(0,0);
    popMatrix();
    }
  }
  noLoop();
}

void estrellaEnLoop(int posXe, int posYe) {
  for(int i = 0; i < 5; i++) {
    pushMatrix();
    rotate(radians(i*random(360)));
    estrella(posXe*i, posYe*i, 100, 100);
    popMatrix();
  }
}

void estrella (int posX, int posY, int alt, int anch) {
  fill(255, 40);
  //stroke(255);
  noStroke();
  beginShape();
  // Puntas inferiores
  vertex(posX-anch/4, posY+alt/2);
  vertex(posX, posY+alt/4); // centro inferior
  vertex(posX+anch/4, posY+alt/2); // punta derecha
  // Punta derecha
  vertex(posX+anch/4, posY+alt/4); // inferior interior
  vertex(posX+anch/2, posY+alt/4); // punta inferior
  vertex(posX+anch/4, posY); // centro derecha
  vertex(posX+anch/2, posY-alt/4); // Punta superior
  vertex(posX+anch/4, posY-alt/4); // superior interior
  // Punta Superior
  vertex(posX+anch/4, posY-alt/2);
  vertex(posX, posY-alt/4); // Centro superior
  vertex(posX-anch/4, posY-alt/2);
  // Punta izquierda
  vertex(posX-anch/4, posY-alt/4); // superior interior
  vertex(posX-anch/2, posY-alt/4); // Punta superior
  vertex(posX-anch/4, posY); // Centro izquierda
  vertex(posX-anch/2, posY+alt/4); // Punta inferior
  vertex(posX-anch/4, posY+alt/4); // Inferior interior
  vertex(posX-anch/4, posY+alt/2);
  endShape();
}
