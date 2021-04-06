void setup() {
  size(800, 800);
}

void draw() {
  background(255);

  for (int i = 0; i<18; i++) {
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(320));
    rotate(radians(i*20));
    mandala(0, 0, 50);
    popMatrix();

    if (i==1) {
      fill(255, 0, 0);
    } else {
      fill(255);
    }
  }


  for (int i = 0; i<36; i++) {
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(340));
    rotate(radians(i*10));
    mandalaSegundoAnillo(0, 0, 50);
    popMatrix();

    if (i==1) {
      fill(255, 0, 0);
    } else {
      fill(255);
    }
  }
}

void mandala(int posX, int posY, int dist) {
  strokeWeight(0.5);
  rectMode(CENTER);
  rect(posX, posY+dist, 5, 20);
  triangle(posX+dist/5, posY+dist*1.4, posX-dist/5, posY+dist*1.4, posX, posY+dist*2);
  noFill();
  stroke(0);
  strokeWeight(10);
  ellipse(posX, posY, dist*5, dist*5);
}

void mandalaSegundoAnillo(int posX, int posY, int dist) {
  strokeWeight(0.5);
  arc(posX, posY+dist*2.9, dist/2.4, dist/1.5, TWO_PI, TWO_PI+PI, CHORD);
  
  pushMatrix();
  rotate(radians(185));
  pushMatrix();
  translate(posX, posY-dist*7.4);
  quad(posX, posY+dist*3.6,posX-dist/4, posY+dist*3.9, posX, posY+dist*4.2, posX+dist/4, posY+dist*3.9);
  ellipse(posX, posY+dist*11.5, 10,10);
  popMatrix();
  popMatrix();
  
  quad(posX, posY+dist*3.6,posX-dist/4, posY+dist*3.9, posX, posY+dist*4.2, posX+dist/4, posY+dist*3.9);
  
  println(mouseY);
 
  
}
