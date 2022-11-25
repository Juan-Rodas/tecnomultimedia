import processing.sound.*;
SoundFile sonido;
//Nombre: Rodas juan
//Legajo: 91405/0
Principal p;
void setup() {
  sonido=new SoundFile(this, "sonido, mp3");
  size(600, 600);
  p= new Principal();
}
void draw() {
  p.dibujar();
}
