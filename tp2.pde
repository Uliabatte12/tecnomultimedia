// Abatte Ulises
//Legajo: 91574/7
// video de YT https://www.youtube.com/watch?v=zzuEn96XYEc
//Mis variables
int cant = 4 ;
int tam;

//Inicio setup

void setup() {

  size(600,600);  
tam = width/cant;
}

//Inicio Draw

void draw() {

background(0);

for (int C=0; C<cant; C++) {
  for (int D=0; D<cant; D++) {    
   for (int E=tam; E>0; E-=10) {

  float A1 = constrain(mouseX, C*tam, C*tam+tam);
  float A2 = constrain(mouseY, D*tam, D*tam+tam);
  float B1 = map(E, tam, 0, C*tam+tam/2, A1);
  float B2 = map(E, tam, 0, D*tam+tam/2, A2);
  float MC1 = map(E, tam, 0, 255, 0 ); 
fill(MC1, 0, 0);rect(B1, B2, E, E);
rectMode(CENTER);
noStroke();

if(mouseX>C*tam && mouseX<C*tam+tam && mouseY>D*tam&&mouseY<D*tam+tam){ //función propia, cambian los colores de los cuadrados dependiendo el mouse
  float MC2 = map(E, tam, 115, 115 , 255 );
fill(0, 0, MC2);
rect(B1, B2, E, E);
 
    }
   }
  }
}
}
void mousePressed() {
  cant++; // Al clickear aumentan los cuadrados
}
void keyPressed() {
  cant = 0; // Pantalla en negro con cualquier tecla
}
