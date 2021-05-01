float rg;
float re;

void setup() {
  size(800, 800);
  noStroke();
}

void draw() {
  background(255);

  rg += 0.05;
  re -= 0.01;

for (int i = 0; i<5; i++) {
  pushMatrix();
    translate(width/2, height/2);

  rotate(radians(365/5*i));
  unQuinto();
  popMatrix();
}

  
  //saveFrame("####.png");
}

void unQuinto() {
    for (int i=4; i<10; i++) {
    for (int j=4; j<18; j++) {

      if (i==9) {
        //Primera línea
        fill(106,55,103);
      } else if (i==8) {
        // Novena línea
        fill(136,85,133);
      } else if (i==7) {
        // Octava línea
        fill(211,117,139);
      } else if (i==6) {
        // Septima línea
        fill(244,145,136);
      } else if (i==5) {
        // Sexta línea
        fill(244,180,136);
      } else if (i==4) {
        // Quinta línea
        fill(244,145,136);
      } 

      pushMatrix();
        translate(0, 0);
      rotate(radians(rg));
      rotate(radians(re*j));
      pushMatrix();
      rotate(radians(12.2*i));
      // (separación de izq a der)
      ellipse(j*j*1.2, 0, j*i*0.3, j*i*0.3);
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
