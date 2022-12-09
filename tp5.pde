//https://youtu.be/v23vwRWSW_I
//Nombre: Rodas juan
//Legajo: 91405/0
import processing.sound.*;
SoundFile musica, trueno, globo;
Principal p;
void setup() {
  musica=new SoundFile(this, "musica.mp3");
  trueno=new SoundFile(this, "trueno.mp3");
  globo=new SoundFile(this, "globo.mp3");
  size(600, 600);
  p= new Principal();
  musica.amp(0.3);
  musica.loop();
}
void draw() {
  fill(0);
  textSize(20); 
  p.estados();
}
