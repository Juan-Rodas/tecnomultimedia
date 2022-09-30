class nube {
  int px, py;
  int mov;
  boolean der;
  PImage nub;
  nube() {
    nub = loadImage("nube.png");
    px = width/2;
    py = height/2;
    imageMode(CENTER);
    der= true;
  }

void dibujar() {
  image(nub, px, py);
}

void mover(int tecPres) {
  if (frameCount%6==0) {
    if (tecPres == RIGHT) {
      px += 5;
      der = true;
    }
    if (tecPres == LEFT) {
      px -= 5;
      der = false;
    }

    mov++;
    mov = mov%7;
  }
}

void mArriba() {
  py -= 20;
}
void mAbajo() {
  py += 20;
}
}
