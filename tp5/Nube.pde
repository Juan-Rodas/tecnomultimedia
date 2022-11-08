class nube {
  int px, py;
  int mov;
  boolean der;
  PImage nub;
  nube() {
    nub = loadImage("nube.png");
    px = width/2;
    py = height/2;
    imageMode(CENTER);
    der= true;
  }

  void dibujar() {
    image(nub, px, py, width/9, height/10);
  }

  void mover(int tecPres) {
    if (frameCount%6==0) {
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

  void mArriba() {
    py -= 20;
  }
  void mAbajo() {
    py += 20;
  }
}
