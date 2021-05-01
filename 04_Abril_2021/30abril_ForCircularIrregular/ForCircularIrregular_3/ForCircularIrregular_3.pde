float rg;
float re;

void setup() {
  size(800, 800);
  noStroke();
}

void draw() {
  background(255);

  //rg += 0.06;
  re -= 0.03;

  for (int i = 0; i<2; i++) {
    pushMatrix();
    translate(width/2, height/2);

    rotate(radians(365/2*i));
    unQuinto();
    popMatrix();
  }


  //saveFrame("####.png");
}

void unQuinto() {
// Cantidad de lineas verticales
  for (int i=3; i<21; i++) {
    // número de circulos por linea
    for (int j=3; j<11; j++) {



      pushMatrix();
      translate(0, 0);
      rotate(radians(rg));
      rotate(radians(re*j));
      pushMatrix();
      rotate(radians(10*i));
      // (separación de izq a der)
      fill(20, i*8, i*15);
      ellipse(0, j*j*3.5, i*2.3, i*2.3);
      popMatrix();
      popMatrix();
    }
  }
}

void keyPressed() {
  if (key=='1') {
    saveFrame("####.png");
  }
}
