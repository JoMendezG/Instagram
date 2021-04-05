float rotar;

void setup() {
  size(500, 500);
}

void draw() {
  rotar=rotar+0.08;
  background(0);
  for (int i=0; i<25; i++) {
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(i*rotar));
    noFill();
    stroke(255);
    strokeWeight(i*0.1);
    figura(0, 0, i*10);
    popMatrix();
  }
  strokeWeight(200);
  stroke(0);
  mascaraTriangulo(width/2, 235, 740);
  strokeWeight(1);
  stroke(255);
  mascaraTriangulo(width/2, height/2, 400);
}

void figura(int posX, int posY, float tam) {

  //rectMode(CENTER);
  //rect(width/2, height/2, 400, 400);

  beginShape();
  vertex(posX, posY-tam);
  vertex(posX+tam, posY-tam/2);
  vertex(posX+tam, posY+tam/2);
  vertex(posX, posY+tam);
  vertex(posX-tam, posY+tam/2);
  vertex(posX-tam, posY-tam/2);
  vertex(posX, posY-tam);
  endShape();
}

void mascara(int posX, int posY, float tam) {

  beginShape();
  vertex(posX, posY-tam);
  vertex(posX+tam, posY-tam/2);
  vertex(posX+tam, posY+tam/2);
  vertex(posX, posY+tam);
  vertex(posX-tam, posY+tam/2);
  vertex(posX-tam, posY-tam/2);
  vertex(posX, posY-tam);
  endShape();
}

void mascaraTriangulo(int posX, int posY, float tam) {
  triangle(posX, posY-tam/2, posX+tam/2, posY+tam/3, posX-tam/2, posY+tam/3 );
}
