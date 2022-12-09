class lluvia {
  PImage llu;
  int tamano;
  float posy, posx, M;
  boolean visible, reinicio;
  lluvia() {
    tamano=15;
    posy=random(0, height/2);
    posx=random(0, width);
    visible=true;
    reinicio= false;
    llu = loadImage("lluvia.png");
  }

  void lluviaps() {
    M=random(1, 2);
    if(visible){
    image(llu, posx, posy, tamano, tamano);
    }
    else{
    posx=-1000;
    }
  }
  
  void moverllu() {
    if (posy>height || reinicio) {
      posy=0;
      posx=random(width);
    }
    posy+=M;
  }
}
