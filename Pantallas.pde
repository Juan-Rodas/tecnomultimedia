class Pantallas {
  float posy, posx, tam;
  PImage titu, ins, gan, per, cre, bot;
  Pantallas() {
    posx=width/2;
    posy=height-100;
    tam=200;
    titu = loadImage("titulo.jpg");
    ins = loadImage("instrucciones.jpg");
    gan = loadImage("ganaste.jpg");
    per = loadImage("perdiste.jpg");
    cre = loadImage("creditos.jpg");
    bot = loadImage("boton.png");
  }
  void titulo() {
    image(titu, width/2, height/2, width, height);
    image(bot,posx, posy, tam, tam);
  }
  void instrucciones() {
    image(ins, width/2, height/2, width, height);
    image(bot,posx+150, posy, tam, tam-50);
  }
  void ganaste() {
    image(gan, width/2, height/2, width, height);
    image(bot,posx, posy, tam, tam);
  }
  void perdiste() {
    image(per, width/2, height/2, width, height);
    image(bot,posx, posy, tam, tam);
  }
  void creditos() {
    image(cre, width/2, height/2, width, height);
    image(bot,posx, posy, tam, tam);
  }
}
