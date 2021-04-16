void setup() {
  size(800, 800);
}

void draw() {
  background(0);
  noStroke();

  dib1 (100, 100, 100);
  dib2 (300, 100, 100);
  dib3 (500, 100, 100);
  dib4 (700, 100, 100);
  dib5 (100, 300, 100);
  dib6 (300, 300, 100);
  dib7 (500, 300, 100);
  dib8 (700, 300, 100);
  dib9 (100, 500, 100);
  dib10 (300, 500, 100);
  dib11 (500, 500, 100);
  dib12 (700, 500, 100);
}

void dib1(int posX, int posY, int tam) {


  for (int i = 0; i<8; i++) {
    pushMatrix();
    translate(posX, posY);
    rotate(radians(45*i));
    triangle(0, -tam/1.3, -tam/4, 0-tam/2, 0+tam/4, 0-tam/2);
    popMatrix();
  }
} 

void dib2(int posX, int posY, int tam) {
  beginShape();
  vertex(posX-tam/6, posY-tam/2);
  vertex(posX+tam/6, posY-tam/2);
  vertex(posX+tam/2, posY-tam/6);
  vertex(posX+tam/2, posY+tam/6);
  vertex(posX+tam/6, posY+tam/2);
  vertex(posX-tam/6, posY+tam/2);
  vertex(posX-tam/2, posY+tam/6);
  vertex(posX-tam/2, posY-tam/6);
  endShape(CLOSE);
}

void dib3(int posX, int posY, int tam) {
  ellipse(posX, posY, tam, tam);
}

void dib4(int posX, int posY, int tam) {

  for (int i = 0; i<4; i++) {
    pushMatrix();
    translate(posX, posY);
    rotate(radians(45+90*i));
    triangle(0, 0-tam/4, 0-tam/4, 0-tam/2, 0+tam/4, 0-tam/2);
    popMatrix();
  }
}

void dib5(int posX, int posY, int tam) {

  for (int i = 0; i<4; i++) {
    pushMatrix();
    translate(posX, posY);
    rotate(radians(90*i));
    triangle(0-tam/4, 0-tam/4, 0, 0-tam/4, 0-tam/4, 0-tam/2);
    triangle(0+tam/4, 0-tam/4, 0, 0-tam/4, 0+tam/4, 0-tam/2);
    popMatrix();
  }
}

void dib6(int posX, int posY, int tam) {
  for (int i = 0; i<4; i++) {
    pushMatrix();
    translate(posX, posY);
    rotate(radians(i*90+45));
    // posX, posY, ancho, alto, angulo  
    arc(0, 0+tam/4, tam/4, tam/4, 0, PI, CHORD);
    popMatrix();
  }
}

void dib7 (int posX, int posY, int tam) {
  quad(posX, posY-tam/2, posX+tam/2, posY, posX, posY+tam/2, posX-tam/2, posY);
}

void dib8 (int posX, int posY, int tam) {
  for (int i = 0; i<4; i++) {
    pushMatrix();
    translate(posX, posY);
    rotate(radians(90*i));
    arc(tam/4, tam/4, tam/2, tam/2, 0, HALF_PI);
    popMatrix();
  }
}

void dib9 (int posX, int posY, int tam) {
  for (int i = 0; i<4; i++) {
    //rectMode(CENTER);
    pushMatrix();
    translate(posX, posY+10);
    rotate(radians(90*i+45));
    rect(-tam/16, tam/4, tam/8, tam/4);
    popMatrix();
  }
}

void dib10 (int posX, int posY, int tam) {
  for (int i = 0; i<4; i++) {
    pushMatrix();
    translate(posX, posY);
    rotate(radians(90*i));
    quad(0, -tam/6, +tam/6, -tam/3, 0, -tam/2, -tam/6, -tam/3);
    popMatrix();
  }
}

void dib11 (int posX, int posY, int tam) {
  for (int i = 0; i<2; i++) {
    pushMatrix();
    translate(posX, posY);
    rotate(radians(90*i));
    beginShape();
    vertex(0, -tam/3);
    vertex(tam/4, -tam/2);
    vertex(tam/4, +tam/2);
    vertex(0, +tam/3);
    vertex(-tam/4, +tam/2);
    vertex(-tam/4, -tam/2);
    endShape(CLOSE);
    popMatrix();
  }
}

void dib12(int posX, int posY, int tam) {
  beginShape();
  vertex(posX-tam/8, posY-tam/3);
  vertex(posX+tam/8, posY-tam/3);
  vertex(posX+tam/3, posY-tam/8);
  vertex(posX+tam/3, posY+tam/8);
  vertex(posX+tam/8, posY+tam/3);
  vertex(posX-tam/8, posY+tam/3);
  vertex(posX-tam/3, posY+tam/8);
  vertex(posX-tam/3, posY-tam/8);
  endShape(CLOSE);
}
