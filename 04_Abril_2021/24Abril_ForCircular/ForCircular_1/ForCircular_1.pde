/*
Inspirado en:
 Ejemplo Push-Pop Matrix
 Francisco Zamorano, 2018
 */

void setup() {
  size(500, 500);
  rectMode(CENTER);
  noStroke();
}

void draw() {
  background(10, 46, 80);

  //Ahora que ya sabemos como rotar, hagámos un poco de FOR LOOP FUN!

  fill(255, 250, 233);
  ellipse(width/2, height/2, 450, 450);
  fill(190, 162, 114);
  ellipse(width/2, height/2, 350, 350);
  fill(77, 139, 178);
  ellipse(width/2, height/2, 250, 250);
  fill(10, 46, 80);
  ellipse(width/2, height/2, 150, 150);

  //En cada vuelta del loop rotaremos un poco
  for (int i=1; i<12; i++) {
    for (int j=1; j<5; j++) {

      pushMatrix();
      //Condiciones de colores
      if (j == 1 ) {
        fill(255, 250, 233);
      } else if (j == 2) {
        fill(190, 162, 114);
      } else if (j==3) {
        fill(77, 139, 178);
      } else {
        fill(10, 46, 80);
      }

      translate(width/2, height/2); 
      rotate(radians((30*i)* frameCount/90)); //rotamos 30 grados en cada vuelta
      //rect(50*j, 0, 20, 20); //Todos del mismo tamaño 
      rect(50*j, 0, i*5, 20); //En degrade de tamaños 
      popMatrix();
    }
  }
}
