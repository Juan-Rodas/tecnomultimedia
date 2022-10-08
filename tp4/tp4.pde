//Nombre: Rodas juan
//Legajo: 91405/0
fondo f;
nube n;
lluvia l;
void setup() {
  size(640, 480);
  f= new fondo();
  n = new nube();
  l = new lluvia();
}
void draw() {
  f.dibujarFondo();
  n.dibujar();
  l.dibujarL();

  if (keyPressed) {
    n.mover(keyCode);
    
  }
  println(keyCode);
}
