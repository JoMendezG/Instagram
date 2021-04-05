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
    strokeWeight(0.5);
    figura(0, 0, i*10);
    popMatrix();
  }
  strokeWeight(100);
  stroke(0);
  mascara(width/2, height/2, 250);
  strokeWeight(1);
  stroke(255);
  mascara(width/2, height/2, 200);
}

void figura(int posX, int posY, int tam) {

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

void mascara(int posX, int posY, int tam) {

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
