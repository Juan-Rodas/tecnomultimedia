
//Nombre: Rodas juan
//Legajo: 91405/0
fondo f;
nube n;
lluvia[] ps = new lluvia[5];
void setup() {
  size(600, 600);
  for (int i=0; i<ps.length; i++) {
    ps[i]=new lluvia();
  }
  f= new fondo();
  n = new nube();
}
void pantalla() {
  f.dibujarFondo();
  n.dibujar();
  for ( int i=0; i<ps.length; i++) {
    ps[i].lluviaps();
    ps[i].moverllu();
  }
  if (keyPressed) {
    n.mover(keyCode);
  }
  println(keyCode);
}
void colicion() {
  for (int i =0; i<ps.length; i++) {
    float distancia= dist(n.px, n.py, ps[i].posx, ps[i].posy);
    if (distancia<ps[i].tamaño + n.tam) {
      background(0);
    }
    ps[i].visible=false;
  }
}
