class nube {
  float px, py;
  int tam;
  PImage nub;
  nube() {
    tam=60;
    nub = loadImage("nube.png");
    px = width/2;
    py = height/2;
    imageMode(CENTER);
  }
  
  void dibujar() {
    image(nub, px, py, tam, tam);
  }

  void mover(int tecPres) {
    if (tecPres == RIGHT && px<width-tam/2) {
      px += 10;
    }
    if (tecPres == LEFT && px>tam/2) {
      px -= 10;
    }
    if (tecPres == DOWN && py<height-tam/2) {
      py += 10;
    }
    if (tecPres == UP && py>tam/2) {
      py -= 10;
    }
  }
}
