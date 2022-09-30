class fondo {
  PImage f;
  int f_x;
  fondo() {
    f_x = -width;
    f = loadImage("ciudad.jpg");
  }
  void dibujarFondo() {
    image(f, f_x, 0);
    mover();
  }
  void mover() {
    f_x = f_x<0 ? f_x : -width;
    f_x ++;
  }
}
