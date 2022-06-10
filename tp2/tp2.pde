// tp2 
// Nombre: Rodas Juan
// Numero de legajo: 91405/0
// https://www.youtube.com/watch?v=M0rwgJymv7Y
int cant = 6;
int tam;
void setup() {
  size(550, 600);
}
void draw() {
  
  background(0);
  tam = width/cant; 
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      for (int c =tam; c>0; c-=15) {
        noStroke();
        float rojo = map(c, tam, 0, 40, 255 );
        if (mouseX>i*tam && mouseX<i*tam+tam && mouseY>j*tam&&mouseY<j*tam+tam) {         
          float limiteX = constrain(mouseX, i*tam, i*tam+tam);
          float limiteY = constrain(mouseY, j*tam, j*tam+tam);
          float ubicX = map(c, tam, 0, i*tam+tam/2, limiteX);
          float ubicY = map(c, tam, 0, j*tam+tam/2, limiteY);
          fill(rojo, 0, 0);
          ellipse(ubicX, ubicY, c, c);
        } else {
          fill(rojo, 0, 0);
          ellipse(i*tam+tam/2, j*tam+tam/2, c, c);
        }
      }
    }
  }
  textSize(17);
  text("volver a empezar presione: r ",180,590);
  text("Aumentar cantidad: m ",180,570);
}

void keyPressed() {
  if(key == 'r'){
  cant = 6; 
  }
  if(key == 'm'){
    cant++; 
  }
}
