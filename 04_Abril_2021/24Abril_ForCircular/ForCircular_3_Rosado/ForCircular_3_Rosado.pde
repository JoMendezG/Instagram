float rg;

void setup() {
  size(800, 800);
  noStroke();
}

void draw() {
  background(255);

  rg += 0.05;

  for (int i=0; i<36; i++) {
    for (int j=4; j<18; j++) {

      if (i==0 || i==9 || i==18 || i==27) {
        //Primera línea
        fill(112, 1, 52);
      } else if (i==8 || i==17 || i==26 || i==35) {
        // Novena línea
        fill(200, 147, 171);
      } else if (i==7 || i==16 || i==25 || i==34) {
        // Octava línea
        fill(204, 144, 170);
      } else if (i==6 || i==15 || i==24 || i==33) {
        // Septima línea
        fill(181, 120, 154);
      } else if (i==5 || i==14 || i==23 || i==32) {
        // Sexta línea
        fill(167, 99, 130);
      } else if (i==4 || i==13 || i==22 || i==31) {
        // Quinta línea
        fill(157, 73, 113);
      } else if (i==3 || i==12 || i==21 || i==30) {
        //Cuarta línea
        fill(151, 48, 96);
      } else if (i==2 || i==11 || i==20 || i==29) {
        // Tercera línea
        fill(137, 25, 77);
      } else if (i==1 || i==10 || i==19 || i==28) {
        //Segunda línea
        fill(129, 2, 59);
      }

      pushMatrix();
      translate(width/2, height/2);
      rotate(radians(rg*j));
      pushMatrix();
      // translate(width/2, height/2);
      rotate(radians(10*i));
      // (separación de izq a der)
      ellipse(j*j*1.2, 0, j*2, j*2);
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
