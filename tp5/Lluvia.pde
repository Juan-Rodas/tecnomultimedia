class lluvia {
  PImage llu;
  float posy, posx, M;
  boolean visible, perder;
  lluvia() {
    posy=random(0, 200);
    posx=random(0, width);
    visible=true;
    perder=false;
    llu = loadImage("lluvia.png");
  }
  void lluviaps() {
    M=random(2, 3);
    if (visible) {
      image(llu, posx, posy, width/25, height/25);
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
