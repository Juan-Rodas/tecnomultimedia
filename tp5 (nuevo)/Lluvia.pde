class lluvia {
  PImage llu;
  int tamaño;
  float posy, posx, M;
  boolean visible, perder;
  lluvia() {
    tamaño=24;
    posy=random(0, 200);
    posx=random(0, width);
    visible=true;
    perder=false;
    llu = loadImage("lluvia.png");
  }
  void lluviaps() {
    M=random(2, 3);
    if (visible) {
      image(llu, posx, posy, tamaño, tamaño);
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
