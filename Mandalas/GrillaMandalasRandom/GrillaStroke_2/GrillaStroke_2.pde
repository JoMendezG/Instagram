float cantidad;

//int [] tamano = new int[4];
//int selectTam;

void setup() {
  size(800, 800);
  frameRate(2);

  //tamano[0] = 25;
  //tamano[1] = 50;
  //tamano[2] = 75;
  //tamano[3] = 100;
}

void draw() {
  background(0);
  noFill();
  stroke(255);
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      cantidad = random(0, 12);
      //selectTam = (tamano[(int)random(0, 4)]);
      dibujos(i*200+100, j*200+100, 100);
      
      cantidad = random(0, 12);
      //selectTam = (tamano[(int)random(0, 4)]);
      dibujos(i*200+100, j*200+100, 75);
      
      cantidad = random(0, 12);
      //selectTam = (tamano[(int)random(0, 4)]);
      dibujos(i*200+100, j*200+100, 50);
      
      cantidad = random(0, 12);
      //selectTam = (tamano[(int)random(0, 4)]);
      dibujos(i*200+100, j*200+100, 25);
    }
  }
  
}

void dibujos (int posX, int posY, int tam) {
  int select = int (cantidad);

  if (select == 0) {
    dib1 (posX, posY, tam);
  } else if (select == 1) {
    dib2 (posX, posY, tam);
  } else if (select == 2) {
    dib3 (posX, posY, tam);
  } else if (select == 3) {
    dib4 (posX, posY, tam);
  } else if (select == 4) {
    dib5 (posX, posY, tam);
  } else if (select == 5) {
    dib6 (posX, posY, tam);
  } else if (select == 6) {
    dib7 (posX, posY, tam);
  } else if (select == 7) { 
    dib8 (posX, posY, tam);
  } else if (select == 8) {
    dib9 (posX, posY, tam);
  } else if (select == 9) {
    dib10 (posX, posY, tam);
  } else if (select == 10) {
    dib11 (posX, posY, tam);
  } else if (select == 11) {
    dib12 (posX, posY, tam);
  }
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
    arc(tam/4, tam/4, tam/2, tam/2, 0, HALF_PI, PIE);
    popMatrix();
  }
}

void dib9 (int posX, int posY, int tam) {
  for (int i = 0; i<4; i++) {
    //rectMode(CENTER);
    pushMatrix();
    translate(posX, posY);
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
