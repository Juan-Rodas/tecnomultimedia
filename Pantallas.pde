class Pantallas {
  float posy, posx, tam, posy1, posx1;
  PImage titu, ins, gan, per, cre, bot;
  Pantallas() {
    posx=width/2;
    posy=height-100;
    posy1=width-50;
    posx1=height-150;
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
    image(bot, posx, posy, tam, tam);
  }
  
  void instrucciones() {
    image(ins, width/2, height/2, width, height);
    image(bot, posx1, posy1, tam, tam-50);
  }
  
  void ganaste() {
    image(gan, width/2, height/2, width, height);
    image(bot, posx, posy, tam, tam);
  }
  
  void perdiste() {
    image(per, width/2, height/2, width, height);
    image(bot, posx, posy, tam, tam);
  }
  
  void creditos() {
    image(cre, width/2, height/2, width, height);
    image(bot, posx, posy, tam, tam);
  }
}
