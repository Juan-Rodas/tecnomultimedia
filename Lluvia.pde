class lluvia {
  PImage llu;
  int tamano;
  float posy, posx, M;
  boolean visible;
  lluvia() {
    tamano=15;
    posy=random(0, 200);
    posx=random(0, height);
    visible=true;
    llu = loadImage("lluvia.png");
  }
  void lluviaps() {
    M=random(2, 3);
    if (visible) {
      image(llu, posx, posy, tamano, tamano);
    } else {
      posy=height-100;
      M=0;
    }
  }
  void moverllu() {

    if (posy<=-10) {
      posy=750;
      posx=random(10, 500);
    }
    posy+=M;
  }
}
