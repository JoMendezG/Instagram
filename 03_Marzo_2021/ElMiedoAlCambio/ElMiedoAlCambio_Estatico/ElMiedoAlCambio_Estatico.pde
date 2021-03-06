color rosa = color(237, 196, 212);
color azul1 = color (29, 38, 91);
color azul2 = color (40, 94, 203);
color azul3 = color (128, 182, 241);
color azul4 = color (161, 208, 247);
color azul5 = color (191, 232, 247);

void setup() {
  size(1080, 1350);

  noStroke();
}

void draw() {
  background(255);
  //scale(0.5);

  tercerAnillo();
  segundoAnillo();

  centroTriangular(0, 0, 0, 0, 0, 0);

  textAlign(CENTER);
  textSize(25);
  fill(azul1);
  //text("Llega un momento en el cual debemos preguntarnos si lo que hay", width/2, 1100);
  //text("en nuestras Vida es lo que queremos o lo que nos da miedo cambiar", width/2, 1140);
  text("There comes a time when we musk ask ourselves if what is in our", width/2, 1100);
  text("lives is what we want or what we are afraid to change", width/2, 1140);
}

//////////////////////////////////////    PRIMER ANILLO   //////////////////////////////////////////////////

void centroTriangular(float izqX, float izqY, float supX, float supY, float derX, float derY) {
  for (int i = 0; i < 8; i++) {

    pushMatrix();
    translate(width/2, 540);
    rotate(radians(45*i));

    // triangulo grande
    pushMatrix();
    rotate(radians(22));
    fill(azul3);
    triangle(izqX+50, izqY, supX, supY+100, derX-50, derY);
    popMatrix();
    popMatrix();
  }

  for (int i = 0; i < 8; i++) {

    pushMatrix();
    translate(width/2, 540);
    rotate(radians(45*i));

    // triangulo pequeño
    fill(azul5);
    triangle(izqX+30, izqY, supX, supY+80, derX-30, derY);
    popMatrix();
  }

  for (int i = 0; i < 8; i++) {

    pushMatrix();
    translate(width/2, 540);
    rotate(radians(45*i));

    // triangulo grande
    pushMatrix();
    rotate(radians(22));
    fill(azul4);
    triangle(izqX+20, izqY, supX, supY+80, derX-20, derY);
    popMatrix();
    popMatrix();
  }

  fill(azul1);
  ellipse(width/2, 540, 30, 30);
}

void ellipsesDobles() {
  fill(rosa);
  ellipse(0, 0, 460, 460);

  // Centro de flor
  for (int i = 0; i < 8; i++) {
    pushMatrix();
    rotate(radians(45*i));

    pushMatrix();
    rotate(radians(22.5));

    // Petalos del centor rosa
    pushMatrix();
    translate(225, 0);
    fill(rosa);
    ellipse(0, 0, 91, 91);
    popMatrix();

    // Centro doble petalos
    pushMatrix();
    translate(225, 0);
    fill(azul1);
    ellipse(0, 0, 60, 60);
    fill(255);
    ellipse(0, 0, 40, 40);
    popMatrix();
    // Pop Matrix que gira todo 22 grados
    popMatrix();

    // ellipse blanco que crea los petalos rosados
    pushMatrix();
    translate(225, 0);
    fill(255);
    ellipse(0, 0, 89, 89);
    popMatrix();

    pushMatrix();
    translate(130, 0);
    fill(255);
    ellipse(0, 0, 80, 80);
    fill(azul2);
    ellipse(0, 0, 60, 60);
    fill(255);
    ellipse(0, 0, 40, 40);
    popMatrix();

    popMatrix();
  }
}




//////////////////////////////////////    SEGUNDO ANILLO   //////////////////////////////////////////////////

void segundoAnillo() {
  Circulo_segundoAnillo(0, 0, 0, 0);
  Contenido_segundoAnillo(0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}

void Circulo_segundoAnillo(float posX, float posY, float anch, float alto) {
  pushMatrix();
  translate(width/2, 540);
  fill(azul3);
  ellipse(0, 0, 650, 650);
  fill(255);
  ellipse(posX, posY, anch+600, alto+600);
  ellipsesDobles();
  popMatrix();
}

void Contenido_segundoAnillo(float izqX, float izqY, float supX, float supY, float derX, float derY, float posX, float posY, float anch, float alto) {

  // Triangulos pequeños traseros
  for (int i=0; i<16; i++) {
    pushMatrix();
    translate(width/2, 540);
    rotate(radians(22.5*i));

    pushMatrix();
    rotate(radians(11));
    pushMatrix();
    translate(0, 300);
    fill(azul5);
    triangle(izqX-50, izqY, supX, supY-40, derX+50, derY);
    popMatrix();
    popMatrix();

    popMatrix();
  }

  // Rectangulos del segundo anillo
  for (int i=0; i<16; i++) {
    pushMatrix();
    translate(width/2, 540);
    rotate(radians(22.5*i));

    pushMatrix();
    translate(0, 300);
    rectMode(CENTER);
    fill(azul4);
    rect(posX, posY, anch+75, alto+25);
    popMatrix();
    popMatrix();
  }

  // 8 Triangulos superiores 
  for (int i=0; i<8; i++) {
    pushMatrix();
    translate(width/2, 540);
    rotate(radians(45*i));

    pushMatrix();
    translate(0, 270);
    fill(azul2);
    triangle(izqX-50, izqY, supX, supY-50, derX+50, derY);
    popMatrix();

    popMatrix();
  }
}

//////////////////////////////////////    TERCER ANILLO   //////////////////////////////////////////////////

void tercerAnillo() {
  // Foor loop que replica todo 16 veces  
  for (int i = 0; i < 16; i++) {
    // PushMatrix que almacena todo el tercerAnillo
    pushMatrix();
    // Tranlado mi figura al centro
    translate(width/2, 540);
    // Todo rota 22.5° para dar 360 (16*22.5=360)
    rotate(radians(22.5*i));

    // PushMatrix que almacena los triple triangulos
    pushMatrix();
    // Rotan 11 grados para estar desfasados con los 2 triangulos grandes
    rotate(radians(11));    
    // pushMatrix();
    //Entrego espacio o separación a las 16 repeticiones
    translate(0, 470);
    TripeTriangulo_tercerAnillo(0, 0, 0, 0, 0, 0);
    //popMatrix();
    popMatrix();

    // PushMatrix que almacena el triangulo verde y rojo
    pushMatrix();
    //Entrego espacio o separación a las 16 repeticiones
    translate(0, 375);
    TriangulosPrincipales_terceranillo(0, 0, 0, 0, 0, 0);
    popMatrix();

    // Cierre pushMatrix general
    popMatrix();
  }

  for (int i = 0; i < 16; i++) {
    // PushMatrix que almacena todo el tercerAnillo
    pushMatrix();
    // Tranlado mi figura al centro
    translate(width/2, 540);
    // Todo rota 22.5° para dar 360 (16*22.5=360)
    rotate(radians(22.5*i));

    // PushMatrix que almacena el triangulo verde y rojo
    pushMatrix();
    //Entrego espacio o separación a las 16 repeticiones
    translate(0, 375);
    TriangulosPrincipales_terceranillo(0, 0, 0, 0, 0, 0);
    popMatrix();

    // Cierre pushMatrix general
    popMatrix();
  }
}

void TriangulosPrincipales_terceranillo(float izqX, float izqY, float derX, float derY, float supX, float supY) {
  pushMatrix();
  // Translate al centro para visualizar las piesas en el centro, solo Visualizar
  //translate(width/2, height/2);
  fill(azul2);
  triangle(izqX-75, izqY, supX, supY+112.5, derX+75, derY);
  fill(azul1);
  triangle(izqX-37.5, izqY-37.5, supX, supY+75, derX+37.5, derY-37.5);
  popMatrix();
}

void TripeTriangulo_tercerAnillo(float izqX, float izqY, float derX, float derY, float supX, float supY) {

  pushMatrix();
  for (int i=-1; i>-4; i--) {

    // Colores escalables azules
    if (i == -1) {
      fill(azul3);
    } else if (i == -2) {
      fill(azul4);
    } else {
      fill(azul5);
    }

    pushMatrix();
    translate(0, 30*i); // Se suma 540 para ver en el centro al Y
    triangle(izqX+40, izqY, supX, supY-50, derX-40, derY);
    popMatrix();
  }
  popMatrix();
}

void keyPressed() {
  if (key== 'r') {
    saveFrame("captura_###.png"); //PNG es recomendado, pero se puede cambiar la extension a .jpg
  }
}
/*
37.5 --> 25 + (25/2)
 */
