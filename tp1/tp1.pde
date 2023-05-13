String pantalla; 
int tiempo;
int velX;
int posX;
PFont misletras;
PImage submarino;
PImage submarino2;
PImage submarinon3;
PImage submarino4;
PImage boton;
color fondo;

void setup() {
size(640, 480);
textAlign(CENTER,CENTER);
  
pantalla = "Menú";    
tiempo = 0;
velX = 1;
posX= width; 
  
misletras=loadFont("mifuente1.vlw");
textFont(misletras,30);

frameRate(60);    

}

void draw() {
  
background(fondo);
  
posX = posX + velX;

if (pantalla.equals("Menú")) {
submarino = loadImage("submarino.jpg");
image(submarino,0,0,640,480); 
fill(255);
text("El SUBMARINO, fue inventado por \n el holandés Cornelio Drebbel, quien \n había construído uno para el rey Jacobo I \n de Inglaterra, un barco submarino con \n el cual logró recorrer la distancia entre \n Greenwich y Wetminster.", posX, height/2);   

if( posX >= width){
velX= -4;
}else if( posX <= 0) {
velX= 4;
}
    
tiempo++;
if(tiempo >= frameRate*10){      
pantalla = "p1";                
tiempo = 0;                      
}
    
boton = loadImage("boton1.png");
image(boton, 500 , 400, 86, 42);

}else if (pantalla.equals("p1")) {
submarino2 = loadImage("submarino2.jpg");
image(submarino2,0,0,640,480);  
fill(255);   
text(" Un submarino es cualquier tipo \n de embarcación naval que es capaz \n de impulsarse debajo del agua y \n por sobre la superficie del agua. ", posX, height/2);   
    
if( posX >= 385){
velX= -5;
}else if( posX <= 250){
velX= 5;
}
    
tiempo++;
if(tiempo >= frameRate*10){        
pantalla = "p2";                
tiempo = 0;                      
}

}else if (pantalla.equals("p2")) {
submarinon3 = loadImage("submarinon3.jpg");
image(submarinon3,0,0,640,480);   
fill(255);   
text("Fue usado por vez primera \n en la Primera Guerra Mundial, en la \n actualidad se ven en todas \n las armadas importantes, sobretodo en  \n la estadounidense, la rusa, la británica \n y la armada china.", posX , height/2);

if( posX >= 385){
velX= -5;
}else if( posX <= 250) {
velX= 5;
}

tiempo++;
if(tiempo >= frameRate*10){        
pantalla = "p3";                
tiempo = 0;                      
}

}else if (pantalla.equals("p3")) {
submarino4 = loadImage("submarino4.jpg");
image(submarino4,0,0,640,480);   
fill(255);   
text("Existen distintos tipos de submarinos: \n Submarinos Civiles. \n Submarinos Militares, que pueden ser: \n Submarinos Balísticos, Nucleares, Batiscafo, \n Portaaviones, y/o no tripulados.", posX, height/2);
    
if( posX >= 380){
velX= 5;
}else if( posX <= 250) {
velX= 5;
}
fill(31,61,51);  

boton = loadImage("boton1.png");
image(boton, 500 , 400, 86, 42);

}else{
submarino4 = loadImage("submarino4.jpg");
image (submarino4,0,0,640,480); 
fill(127);   
}
println(frameRate);
}

void mousePressed(){  
  
if (pantalla.equals("Menú")) {
int botonX = 500;
int botonY = 400;
if (mouseX >= botonX && mouseX <= botonX + 100 && mouseY >= botonY && mouseY <= botonY + 100) {
pantalla = "p1";
tiempo = 0;
}

}else if (pantalla.equals("p2")) {
int botonX = 500;
int botonY = 400;
if (mouseX >= botonX && mouseX <= botonX + 100 && mouseY >= botonY && mouseY <= botonY + 100) {
pantalla = "p3";
tiempo = 0;
}

} else if (pantalla.equals("p3")) {
int botonX = 500;
int botonY = 400;
if (mouseX >= botonX && mouseX <= botonX + 100 && mouseY >= botonY && mouseY <= botonY + 100) {
pantalla = "Menú";
tiempo = 0;
}
}
}
