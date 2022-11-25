
class Principal {
  Pantallas p;
  fondo f;
  nube n;
  int puntos, estado, tiempo; 
  int tlimite=300;
  int cantidad=10;
  lluvia[] ps = new lluvia[cantidad];
  Globo[] g=new Globo[cantidad/2];
  Principal() { 
    for (int i=0; i<ps.length; i++) {
      ps[i]=new lluvia();
    }
    for (int i=0; i<g.length; i++) {
      g[i]=new Globo();
    }
    p= new Pantallas();
    f= new fondo();
    n= new nube();
  }
  // se dibuja la pantalla
  void dibujar() {
    juego();
    colision();
    estados();
  }
  // la pantalla del juego
  void juego() {
    tiempo=frameCount%tlimite+10;
    f.dibujarFondo();
    n.dibujar();
    text("tiempo:"+tiempo, width/10, height/12);
    text("puntos:"+puntos, width-100, height/12);
    // siclo for para dibujar lluvia
    for ( int i=0; i<ps.length; i++) {
      ps[i].lluviaps();
      ps[i].moverllu();
    }
    // siclo for para dibujar globos
    for ( int i=0; i<g.length; i++) {
      g[i].dibujarglo();
      g[i].moverglo();
    }
    if (keyPressed) {
      n.mover(keyCode);
    }
    println(keyCode);
  }
  // metodo colicion(lluvia y globo)
  void colision() {
    for (int i =0; i<ps.length; i++) {
      float distanciallu= dist(n.px, n.py, ps[i].posx, ps[i].posy);
      if (distanciallu<ps[i].tamano/3 + n.tam/2) {
        background(0);
        ps[i].posx=-1000;
        ps[i].visible=false;
        puntos++;
      }
    }
    for (int i =0; i<g.length; i++) {
      float distanciaglo= dist(n.px, n.py, g[i].posx, g[i].posy);
      if (distanciaglo<g[i].tamano/4 + n.tam/2) {
        background(0);
        g[i].posx=-1000;
        g[i].visible=false;
        estado=4;
      }
    }
    if (cantidad <= puntos && tiempo <= tlimite) {
      estado=3;
    } else if (tiempo >= tlimite) {
      estado=4;
    }
  }
  //estados de juego y visualizacion de pantalla
  void estados() {
    switch(estado) {
    case 0:
      p.titulo();
      if (mousePressed) {
        float calculo=dist(mouseX, mouseY, p.posx, p.posy);
        if (calculo<p.tam/2) {
          estado=1;
        }
      }
      break;
    case 1:
      p.instrucciones();
      if (mousePressed) {
        float calculo=dist(mouseX, mouseY, p.posx+150, p.posy);
        if (calculo<p.tam-50/2) {
          estado=2;
        }
      }
      break;
    case 2:
      juego();
      break;
    case 3:
      p.ganaste();
      if (mousePressed) {
        float calculo=dist(mouseX, mouseY, p.posx, p.posy);
        if (calculo<p.tam) {
          estado=5;
        }
      }
      break;
    case 4:
      p.perdiste();
      if (mousePressed) {
        float calculo=dist(mouseX, mouseY, p.posx, p.posy);
        if (calculo<p.tam) {
          estado=0;
        }
      }
      break;
    case 5:
      p.creditos();
      if (mousePressed) {
        float calculo=dist(mouseX, mouseY, p.posx, p.posy);
        if (calculo<p.tam) {
          estado=0;
        }
      }
      break;
    }
  }
}
