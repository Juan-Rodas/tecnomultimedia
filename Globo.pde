class Globo {
  PImage glo;
  int tamano;
  float posy, posx, M;
  boolean visible;
  Globo() {
    tamano=100;
    posy=random(0, height/2 );
    posx=random(0, width);
    visible=true;
    glo = loadImage("globo.png");
  }
  
  void dibujarglo() {
    M=random(3, 4);
    image(glo, posx, posy, tamano, tamano);
  }
  
  void moverglo() {
    if (posy<0) {
      posy=height;
      posx=random(width);
    }
    posy-=M;
  }
}
