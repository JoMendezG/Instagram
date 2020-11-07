void setup() {
  size(1080, 1350);

  noStroke();
}

void draw() {
  background(255);

  for (int i = 0; i < 16; i++) {
    pushMatrix();
    translate(width/2, 540);
    rotate(radians(22.5*i));
    //Entrego espacio o separación a las 16 repeticiones
    translate(0, 375);
    TriangulosPrincipales_terceranillo(0, 0, 0, 0, 0, 0);
    popMatrix();
  }  
  //TercerAnilloDibujo();
  //CirculoDelCentro();
}


void TriangulosPrincipales_terceranillo(float izqX, float izqY, float derX, float derY, float supX, float supY) {
  pushMatrix();
  //translate(width/2, height/2);

  fill(0, 150, 0);
  triangle(izqX-75, izqY, supX, supY+112.5, derX+75, derY);
  fill(255, 0, 0);
  triangle(izqX-37.5, izqY-37.5, supX, supY+75, derX+37.5, derY-37.5);
  popMatrix();
}

void TercerAnilloDibujo() {
  // tres triangulos
  for (int i=0; i<16; i++) {
    for (int j=-1; j>-4; j--) {
      pushMatrix();
      translate(width/2, 540);
      rotate(radians(i*22.5));

      // 3 Triangulos verdes escalonados
      pushMatrix();
      translate(0, j*30+530);
      triangle(-50, 0, 50, 0, 0, -50);
      popMatrix();

      // Triangulo verde Oscuro grande
      pushMatrix();
      translate(0, 500);
      fill(2, 63, 9);
      triangle(0, -60, 105, 20, 170, -95);
      popMatrix();

      // Triangulo Rojo grande
      pushMatrix();
      translate(0, 500);
      fill(185, 22, 7);
      triangle(30, -110, 100, -20, 110, -130);
      popMatrix();

      popMatrix();

      if (j==-1) {
        fill(48, 126, 4);
      } else if (j==-2) {
        fill(105, 141, 1);
      } else if (j<=-3) {
        fill(157, 157, 1);
      }
    }
  }
}

void CirculoDelCentro() {

  fill(135, 159, 163);
  ellipse(width/2, 540, 700, 700);
  fill(255);
  ellipse(width/2, 540, 650, 650); 

  for (int i=0; i<16; i++) {
    pushMatrix();
    translate(width/2, 540);
    rotate(radians(i*22.5));

    rectMode(CENTER);
    fill(191, 156, 0);
    rect(0, 320, 80, 25);

    popMatrix();
  }
}

/*
37.5 --> 25 + (25/2)
*/
