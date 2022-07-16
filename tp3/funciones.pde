  void pantallai(){
    image(fondo, 0, 0, 600, 600);
    fill(250,197,204);
    noStroke();
    rect(100,100,400,400,50);
    fill(242,122,135);
    textSize(60);
    text("Instrucciones",150, 150);
    textSize(40);
    text("Atrapa todas las frutillas",125, 250);
    text("antes que se acabe el ",125, 300);
    text("tiempo.",125, 350);
    text("Presione para comenzar",150, 450);
  }
void pantallaj(){ 
  tiem= millis()/1000;
  image(fondo,0,0,600,600);
  fill(242,122,135);
  textSize(30);
  text("Puntos: "+ pun ,20, 25);
  text("Tiempo: "+ tiem ,350, 25);
  noStroke(); 
  fill(255);
  rect(50,50,ancho,alto,15);
  for (int i=0; i<cant; i++) {
    image(frutilla,px[i]+50, i*tam+50, tam, tam); 
  }
  jugar= true;
  if ((pun == cant)&&(tiem <= 15)){
    ganaste();
        
   }
   else if((pun < cant)&&(tiem >= 15)){
     perdiste();
  }
}
void ganaste(){
    image(fondo, 0, 0, 600, 600);
    fill(250,197,204);
    noStroke();
    rect(100,150,400,300,50);
    fill(242,122,135);
    textSize(90);
    text("¡Ganaste!",160, 250);
    textSize(40);
    text("Puntos: "+pun ,130, 300);
    textSize(30);
    text("Presiona para volver a empezar",125, 400);
    if( in >= 2){
      pantallaj();
    }
}
void perdiste(){
    image(fondo, 0, 0, 600, 600);
    fill(250,197,204);
    noStroke();
    rect(100,150,400,300,50);
    fill(242,122,135);
    textSize(90);
    text("¡Perdiste!",160, 250);
    textSize(40);
    text("Puntos: "+pun ,130, 300);
    textSize(30);
    text("Presiona para volver a empezar",125, 400);
    if( in >= 2){
      pantallaj();
    }
}
