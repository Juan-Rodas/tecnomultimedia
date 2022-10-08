class lluvia {
  PImage llu;
  int cant;
  float posy;
  float posx;
  lluvia() {
    posy=0.1;
    cant=30;
    llu = loadImage("lluvia.png");
  }
  void dibujarL() {

    for (int i=0; i<cant; i++) {
      image(llu, posx, posy, width/25, height/25);
      moverllu();
    }
  }
  void moverllu() {

    for (int i=0; i<cant; i++) {
      posx= random(30, 600);
      posy= random(0,400);
    }
  }
}
