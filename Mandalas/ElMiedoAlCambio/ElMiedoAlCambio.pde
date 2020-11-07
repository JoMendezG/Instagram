void setup() {
  size(1080, 1350);

  noStroke();
}

void draw() {
  background(255);

  tercerAnillo();
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
}

void TriangulosPrincipales_terceranillo(float izqX, float izqY, float derX, float derY, float supX, float supY) {
  pushMatrix();
  // Translate al centro para visualizar las piesas en el centro, solo Visualizar
  //translate(width/2, height/2);
  fill(0, 100, 0);
  triangle(izqX-75, izqY, supX, supY+112.5, derX+75, derY);
  fill(255, 0, 0);
  triangle(izqX-37.5, izqY-37.5, supX, supY+75, derX+37.5, derY-37.5);
  popMatrix();
}

void TripeTriangulo_tercerAnillo(float izqX, float izqY, float derX, float derY, float supX, float supY) {

  pushMatrix();
  for (int i=-1; i>-4; i--) {
    pushMatrix();
    translate(0, 30*i); // Se suma 540 para ver en el centro al Y
    fill(0, i*-75, 0);
    triangle(izqX+40, izqY, supX, supY-50, derX-40, derY);
    popMatrix();
  }
  popMatrix();
}


/*
37.5 --> 25 + (25/2)
 */
