//Nombre: Rodas juan
//Legajo: 91405/0
fondo f;
nube n;
lluvia[] ps = new lluvia[50];
void setup() {
  size(600, 600);
  for (int i=0; i<ps.length; i++) {
    ps[i]=new lluvia();
  }
  f= new fondo();
  n = new nube();
}
void draw() {
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
