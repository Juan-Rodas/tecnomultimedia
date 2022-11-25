class fondo {
  PImage fon;
  int posy;
  fondo() {
    posy = height/2;
    fon = loadImage("fon.jpg");
  }
  void dibujarFondo() {
    background(38,43,63);
    image(fon, width/2, posy, width, height);
    mover();
  }
  void mover() {
    posy = posy<height ? posy : height/2;
    posy ++;
  }
}
