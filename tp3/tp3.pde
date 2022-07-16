//Tp3
//Nombre: Rodas Juan
//Legajo: 91405/0
//Link: https://www.youtube.com/channel/UCnsa7VrvN0Dxc6kKZCHnPjQ/featured
int alto,ancho,tam,pun,tiem;
int in = 0;
boolean jugar=false;
PFont fuente;
PImage fondo,frutilla;
int cant = 15;
float [] px = new float[cant];
void setup() {
  size(600, 600);
  fondo=loadImage("fondo.jpg");
  frutilla=loadImage("frutilla.PNG");
  fuente=createFont("DkCrayonCrumble-ddll.ttf", 32);
  textFont(fuente);
  alto=510;
  ancho=510;
  tam = alto/cant;
  for (int i=0; i<cant; i++) {
    px[i] = random(1,500);
  }
}
void draw() {
 
  image(fondo, 0, 0, 600, 600);
    fill(250,197,204);
    noStroke();
    rect(100,220,400,110,50);
    fill(242,122,135);
    textSize(100);
    text("Frutillitas",150, 300);
    textSize(40);
    text("Presione para comenzar",150, 370);
    if( in == 1){
      pantallai();
    }
    if( in >= 2){
      pantallaj();
    }
}
  void mousePressed(){
    in ++;
    if((jugar == true)){{for (int i=0; i<cant; i++) {
     if((mouseX> px[i]-(tam-50))&&(mouseX < px[i]+(tam+50))&&(mouseY>i*tam-(tam-50))&&(mouseY<i*tam+(tam+50))){
      fill(255);
      rect(px[i]+50, i*tam+50, tam, tam);
      pun++;
      }
    }
  }
}
}
