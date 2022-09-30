//Nombre: Rodas juan
//Legajo: 91405/0

class principal {
  fondo f;
  nube n;
  principal() {
    size(640, 480);
    f= new fondo();
    n = new nube();
  }
  void d() {
    f.dibujarFondo();
    n.dibujar();
    if (keyPressed) {
      n.mover(keyCode);
    }
    println(keyCode);
  }
  void keyPressed() {
    if (key=='W' || key=='w') {
      n.moverArriba();
    }
    if (key=='S' || key=='s' ) {
      n.moverAbajo();
    }
  }
}
