class nube {
  int px, py;
  int mov,tam;
  boolean der;
  PImage nub;
  nube() {
    tam=60;
    nub = loadImage("nube.png");
    px = width/2;
    py = height/2;
    imageMode(CENTER);
    der= true;
  }

  void dibujar() {
    image(nub, px, py, tam, tam);
  }

  void mover(int tecPres) {
    if (frameCount%1==0) {
      if (tecPres == RIGHT) {
        px += 5;
        der = true;
      }
      if (tecPres == LEFT) {
        px -= 5;
        der = false;
      }
      if (tecPres == DOWN) {
        py += 5;
        der = true;
      }
      if (tecPres == UP) {
        py -= 5;
        der = false;
      }

      mov++;
      mov = mov%7;
    }
  }
}
