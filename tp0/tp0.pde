PImage mi_imagen;
void setup() {
  mi_imagen=loadImage ("vehiculo.jpg");
  size (800, 400);
}
void draw () {
  image (mi_imagen, 0, 0, 400, 400);
  //rectangulos
  fill (47, 173, 222);
  stroke (47, 173, 222);
  rect (400, 0, 400, 100);
  fill (196, 198, 198);
  stroke (196, 198, 198);
  rect (400, 100, 400, 180);
  fill (72, 69, 69);
  stroke(72, 69, 69);
  rect (400, 180, 400, 220);
  //micro
  fill (252, 217, 36);
  stroke (252, 217, 36);
  rect (430, 120, 350, 90);
  //ruedas
  fill (18, 18, 17);
  stroke (18, 18, 17);
  ellipse (500, 220, 45, 45);
  fill (18, 18, 17);
  stroke (18, 18, 17);
  ellipse (695, 220, 45, 45);
  //puerta
  fill (33, 33, 31);
  stroke (33, 33, 31);
  rect (730, 140, 40, 70);
  //ventanas
  fill (203, 178, 49);
  stroke (203, 178, 49);
  rect (460, 140, 30, 30);
  fill (203, 178, 49);
  stroke (203, 178, 49);
  rect (510, 140, 30, 30);
  fill (203, 178, 49);
  stroke (203, 178, 49);
  rect (560, 140, 30, 30);
  fill (203, 178, 49);
  stroke (203, 178, 49);
  rect (610, 140, 30, 30);
  fill (203, 178, 49);
  stroke (203, 178, 49);
  rect (660, 140, 30, 30);
}
