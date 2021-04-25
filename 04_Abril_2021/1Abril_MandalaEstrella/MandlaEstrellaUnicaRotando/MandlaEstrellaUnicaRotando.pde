float rotar;

void setup() {
  size(800, 800);
}

void draw() {
  rotar= rotar+0.1;

  background(0);
  for (int i = 0; i < 10; i++) {
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(i*rotar));
    estrella(0, 0, 600, 600);
    popMatrix();
  }
}

void estrella (int posX, int posY, int alt, int anch) {
  fill(255, 20);
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
