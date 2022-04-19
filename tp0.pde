void setup() {
  size(500, 500);
}
void draw() {
  background(255, 80, 31);
  
  //solroj
  strokeWeight(5);
  fill(255,91,31);
  stroke(255,91,31);
  ellipse(200,140,350,350);
  strokeWeight(2);
  //solnaran
  strokeWeight(5);
  fill(255,102,29);
  stroke(255,102,29);
  ellipse(200,140,250,250);
  strokeWeight(2);
  //solamar
  strokeWeight(5);
  fill(255,186,36);
  stroke(255,186,36);
  ellipse(200,140,150,150);
  strokeWeight(2);
    //montaña
  strokeWeight(4);
  stroke(237,102,29);
  fill(203,95,23);
  triangle(450, 400, 100, 400, 300, 100);
  fill(203,95,23);
  triangle(250, 400, 0, 400, 0, 10);
  
  //suelo
  fill(203,80,31);
  stroke(203,80,31);
  rect(0,400,500,100);
  //nieve2
  stroke(255);
  fill(255);
  triangle(320, 140, 220, 210, 300, 100);
  stroke(255);
  fill(255);
  triangle(353, 200, 280, 130, 300, 100);
  //nieve1
  stroke(255);
  fill(255);
  triangle(61, 100, 0, 200, 0, 10);
  fill(255);
  triangle(0, 10, 0, 100, 95,150);
  
  println("x:");
  println(mouseX);
  println("y:");
  println(mouseY);
}
