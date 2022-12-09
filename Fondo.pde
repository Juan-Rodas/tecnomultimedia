class fondo {
  PImage fon;
  int posy;
  fondo() {
    posy = height/3;
    fon = loadImage("fondo2.png");
  }
  
  void dibujarFondo() {
    image(fon, width/2, posy, width, height*2);
    mover();
  }
  
  void mover() {
    posy = posy<height ? posy : height/3;
    posy ++;
  }
}
