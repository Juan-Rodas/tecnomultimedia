class Globo {
  PImage glo;
  int tamano;
  float posy, posx, M;
  boolean visible;
  Globo() {
    tamano=100;
    posy=random(height,0 );
    posx=random(0, width);
    visible=true;
    glo = loadImage("globo.png");
  }
  void dibujarglo() {
    M=random(2, 3);
    if (visible) {
      image(glo, posx, posy, tamano, tamano);
    } else {
      posy=height-100;
      M=0;
    }
  }
  void moverglo() {

    if (posy<=-10) {
      posy=0;
      posx=random(700,0);
    }
    posy-=M;
  }
}
