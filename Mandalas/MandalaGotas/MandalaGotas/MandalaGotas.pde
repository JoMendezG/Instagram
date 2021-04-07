float rp;
float rn;
void setup() {
  size(800, 800);
}

void draw() {
  background(255);

  rp+=0.1;
  rn-=0.1;

  for (int i = 0; i<18; i++) {
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(rp));
    rotate(radians(i*20));
    mandalaPrimerAnillo(0, -70, 50);
    popMatrix();
  }

  for (int i = 0; i<36; i++) {
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(rn));
    rotate(radians(i*10));
    mandalaSegundoAnillo(0, 0, 50);
    popMatrix();
  }

  for (int i = 0; i<54; i++) {
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(rp));
    rotate(radians(i*6.667));
    mandalaTercerAnillo(0, 80, 50);
    popMatrix();
  }

  for (int i = 0; i<72; i++) {
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(rn));
    rotate(radians(i*5));
    mandalaCuartoAnillo(0, 165, 50);
    popMatrix();
  }
}

void mandalaPrimerAnillo1(int posX, int posY, int dist) {
  strokeWeight(0.5);
  arc(posX, posY+dist*2.9, dist/2.4, dist/1.5, TWO_PI, TWO_PI+PI, CHORD);

  pushMatrix();
  rotate(radians(529.7));
  pushMatrix();
  translate(posX, posY-dist*7.4);

  quad(posX, posY-dist*3.6+606, posX-dist/4, posY+606-dist*3.9, posX, posY+606-dist*4.2, posX+dist/4, posY+606-dist*3.9);

  ellipse(posX, posY+dist*11.5+60, 10, 10);

  popMatrix();
  popMatrix();

  quad(posX, posY+dist*3.6-10, posX-dist/4, posY+dist*3.9-10, posX, posY+dist*4.2-10, posX+dist/4, posY+dist*3.9-10);
}

void mandalaPrimerAnillo(int posX, int posY, int dist) {
  strokeWeight(0.5);
  arc(posX, posY+dist*2.9, dist/2.4, dist/1.5, TWO_PI, TWO_PI+PI, CHORD);

  pushMatrix();
  rotate(radians(529.7));
  pushMatrix();
  translate(posX, posY-dist*7.4);

  quad(posX, posY-dist*3.6+606, posX-dist/4, posY+606-dist*3.9, posX, posY+606-dist*4.2, posX+dist/4, posY+606-dist*3.9);

  ellipse(posX, posY+dist*11.5+60, 10, 10);

  popMatrix();
  popMatrix();

  quad(posX, posY+dist*3.6-10, posX-dist/4, posY+dist*3.9-10, posX, posY+dist*4.2-10, posX+dist/4, posY+dist*3.9-10);
}

void mandalaSegundoAnillo(int posX, int posY, int dist) {
  strokeWeight(0.5);
  arc(posX, posY+dist*2.9, dist/2.4, dist/1.5, TWO_PI, TWO_PI+PI, CHORD);

  pushMatrix();
  rotate(radians(185));
  pushMatrix();
  translate(posX, posY-dist*7.4);
  quad(posX, posY+dist*3.6, posX-dist/4, posY+dist*3.9, posX, posY+dist*4.2, posX+dist/4, posY+dist*3.9);
  ellipse(posX, posY+dist*11.5, 10, 10);
  popMatrix();
  popMatrix();

  quad(posX, posY+dist*3.6, posX-dist/4, posY+dist*3.9, posX, posY+dist*4.2, posX+dist/4, posY+dist*3.9);
}

void mandalaTercerAnillo(int posX, int posY, int dist) {
  strokeWeight(0.5);
  arc(posX, posY+dist*2.9, dist/2.4, dist/1.5, TWO_PI, TWO_PI+PI, CHORD);

  pushMatrix();
  rotate(radians(176.8));
  pushMatrix();
  translate(posX, posY-dist*7.4);

  quad(posX, posY-dist*3.6+151, posX-dist/4, posY+151-dist*3.9, posX, posY+151-dist*4.2, posX+dist/4, posY+151-dist*3.9);

  ellipse(posX, posY+dist*11.5-75, 10, 10);

  popMatrix();
  popMatrix();

  quad(posX, posY+dist*3.6, posX-dist/4, posY+dist*3.9, posX, posY+dist*4.2, posX+dist/4, posY+dist*3.9);
  println(rp);
}

void mandalaCuartoAnillo(int posX, int posY, int dist) {
  strokeWeight(0.5);
  arc(posX, posY+dist*2.9, dist/2.4, dist/1.5, TWO_PI, TWO_PI+PI, CHORD);

  pushMatrix();
  rotate(radians(177.4));
  pushMatrix();
  translate(posX, posY-dist*7.4);

  quad(posX, posY-dist*3.6-103, posX-dist/4, posY-103-dist*3.9, posX, posY-103-dist*4.2, posX+dist/4, posY-103-dist*3.9);

  ellipse(posX, posY+dist*11.5-160, 10, 10);

  popMatrix();
  popMatrix();

  quad(posX, posY+dist*3.6, posX-dist/4, posY+dist*3.9, posX, posY+dist*4.2, posX+dist/4, posY+dist*3.9);
}
