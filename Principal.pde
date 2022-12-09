
class Principal {
  Pantallas p;
  fondo f;
  nube n;
  PImage fbot=loadImage("boton1.png");
  int puntos;
  int estado=0;
  int tiempo=0;
  int tlimite=20;
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

  //pantalla juego
  void juego() {
    if (frameCount%20==0) {
      tiempo++;
    }
    f.dibujarFondo();
    image(fbot, width-535, height/700, 160, 160);
    image(fbot, width-70, height/700, 160, 160);
    text("Tiempo: "+tiempo, width-600, height/20);
    text("Puntos: "+puntos, width-120, height/20);
    n.dibujar();

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
    // movimiento de la nube
    if (keyPressed) {
      n.mover(keyCode);
    }
  }

  // metodo colision(lluvia y globo)
  void colision() {
    //lluvia
    for (int i =0; i<ps.length; i++) {
      float distanciallu= dist(n.px, n.py, ps[i].posx, ps[i].posy);
      if (distanciallu<ps[i].tamano/3 + n.tam/2) {
        background(255);
        ps[i].visible=false;
        puntos++;
        trueno.amp(0.1);
        trueno.play();
      }
    }
    //globo
    for (int i =0; i<g.length; i++) {
      float distanciaglo= dist(n.px, n.py, g[i].posx, g[i].posy);
      if (distanciaglo<g[i].tamano/4 + n.tam/2) {
        background(255);
        g[i].posy-=n.tam*2;
        globo.amp(0.2);
        globo.play();
        estado=5;
        
      }
    }
    //condicionales para ganar o perder
    if (cantidad <= puntos && tiempo <= tlimite) {
      estado=4;
      estados();
    } else if (tiempo >= tlimite) {
      estado=5;
    }
  }
  
  //estados de juego y visualizacion de pantalla
  void estados() {
    switch(estado) {
    case 0:
      p.titulo();
      if (mousePressed) {
        float calculo=dist(mouseX, mouseY, p.posx, p.posy);
        if (calculo<p.tam) {
          estado=1;
        }
      }
      break;
    case 1:
      p.instrucciones();
      if (mousePressed) {
        float calculo1=dist(mouseX, mouseY, p.posx1, p.posy1);
        if (calculo1<p.tam-50/2) {
          estado=2;
        }
      }
      break;
    case 2:
      p.creditos();
      if (mousePressed) {
        float calculo2=dist(mouseX, mouseY, p.posx, p.posy);
        if (calculo2<p.tam) {
          estado=3;
        }
      }
      break;
    case 3:
      juego();
      colision();
      break;
    case 4:
      p.ganaste();
      if (mousePressed) {
        float calculo3=dist(mouseX, mouseY, p.posx, p.posy);
        if (calculo3<p.tam) {
          estado=0;
          tiempo=0;
          puntos=0;
          for (int i =0; i<ps.length; i++) {
            ps[i].visible=true;
            ps[i].reinicio=false;
          }
        }
      }
      break;
    case 5:
      p.perdiste();
      if (mousePressed) {
        float calculo4=dist(mouseX, mouseY, p.posx, p.posy);
        if (calculo4<p.tam) {
          for (int i =0; i<ps.length; i++) {
            ps[i].visible=true;
            ps[i].reinicio=false;
          }
          estado=3;
          tiempo=0;
          puntos=0;
        }
      }
      break;
    }
  }
}
