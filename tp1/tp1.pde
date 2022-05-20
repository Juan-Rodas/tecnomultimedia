//tp1
//Nombre: Rodas,Juan

float y, vel;
float tono;
int segundos;
PImage titulo, fondo, gdesign, director, flor, adirector, fin;
PFont fuente;
void setup(){
  tono=255;
  vel=6;
  y=50;
  size(500, 500);
  titulo=loadImage("titulo.jpg");
  fondo=loadImage("fondo.jpg");
  gdesign=loadImage("gdesign.png");
  director=loadImage("director.png");
  flor=loadImage("flor.png");
  fin=loadImage("fin.png");
  adirector=loadImage("art.png");
  fuente=createFont("DkCrayonCrumble-ddll.ttf", 32);
  textFont(fuente);
}
void draw(){
  tint(255,255);
  image(fondo, 0, 0, 500, 500);

  tint(255,tono);
  image(titulo, 0, 0, 500, 500);

  if (frameCount%60==0) { 
    segundos++; 
  }
  if (frameCount%2==0) {  
    tono-=15; 
  }
  if (tono <= 0) {
    tono=0;
  }

  if(frameCount >= 35){
    fill(0);
    textSize(50);
  
    text("Creditos",200, 500+y);
    tint(255,255);
    image(flor,140,455+y,50,50);
    tint(255,255);
    image(flor,350,455+y,50,50);
    
    tint(255,255);
    image(director,220,550+y,150,150);
    text("Director",200, 725+y);
    tint(255,255);
    image(flor,140,690+y,50,50);
    tint(255,255);
    image(flor,330,690+y,50,50);
    textSize(40);
    text("Masahide kobayashi",130, 770+y);
    
    tint(255,255);
    image(gdesign,135, 750+y,250,250);
    textSize(50);
    text("Game Design",130,990+y);
    tint(255,255);
    image(flor,75,955+y,50,50);
    tint(255,255);
    image(flor,365,955+y,50,50);
    textSize(40);
    text("Tomohide Hayashi",120, 1035+y);
    text("Jun Imanishi",160, 1065+y);
    text("Ryo Sato",180, 1100+y);
    
    tint(255,255);
    image(adirector,200, 1150+y,150,150);
    textSize(50);
    text("Art Director",165,1330+y);
    tint(255,255);
    image(flor,110,1290+y,50,50);
    tint(255,255);
    image(flor,375,1290+y,50,50);
    textSize(40);
    text("Masamichi Harada",145, 1365+y);
    
    tint(255,255);
    image(fin,150, 1500+y,250,250);
    textSize(60);
    text("Fin",240,1800+y);
    y= y - vel;
  }
     tint(255,tono);
   image(titulo,0,0,500,500);
  if(frameCount>=339 && tono<=105){
    tono+=15;
  }
    if(tono>=105 && segundos>5){
    tint(255,100);
    image(titulo,0,0,500,500);
    }
}
