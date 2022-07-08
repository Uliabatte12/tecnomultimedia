//Nombre: ULises Abatte
//Legajo: 91574/7

//Mil discúlpas por enviarlo incompleto, hice lo más que pude. Sincermante los conceptos los entendía pero cuando los pongo en practica me pierdo.
//Quisiera entrar al curso nivelatorio en vacaciones de invierno para poder ponerme al día y para completar futuros trabajos correctamente.


int cant=1;
PImage[] pinchos1=new PImage[cant];
int pos=800;
int orden;
// primeros pinchos
int cant1=1;
PImage[] pinchos2=new PImage[cant];
int pos2=990;
int orden2;
//segunodos pinchos
int cant2=1;
PImage[] pinchos3=new PImage[cant];
int pos3=500;
int orden3;
//terceros pinchos
String [] textos = {"Geometry Dash", "Instrucciones: Con la flecha\n para arriba deberás saltar los pinchos"};
int estado;
PImage geometry1;
boolean personaje1;
int personaje_estaSaltandoDireccion;
int personaje_velocidadSalto = 1;
int personaje_posX = 150;
int personaje_posY = 300;
int topePiso = 300;
int topeSalto = personaje_posY - 90;


void setup() {
  size(600, 400);
    for(int a=0; a<cant;a++){
  pinchos1 [a]= loadImage("pinchos1.jpg");

for(int b=0; b<cant1;b++){
  pinchos2 [b]= loadImage("pinchos2.jpg");

for(int c=0; c<cant2;c++){
  pinchos3 [c]= loadImage("pinchos3.jpg");
   }
  }
}
}

void draw() {
  background(0);


if(frameCount %6==0){
  orden++;
  orden=orden%cant1;
}
pos--;
  pos = pos%800;
  image(pinchos1[orden], pos , 300,100,70);
  
//pinchos 2
if(frameCount %6==0){
  orden2++;
  orden2=orden2%cant;
}
pos2--;
  pos2 = pos2%990;
  image(pinchos2[orden2], pos2 , 300,100,70);  
  
if(frameCount %6==0){
  orden3++;
  orden3=orden3%cant2;
}
pos3--;
  pos3 = pos3%500;
  image(pinchos3[orden3], pos3 , 300,80,60);  

  geometry1 = loadImage("personaje1.jpg");
image(geometry1,personaje_posX,personaje_posY,50,50);
  calcularMovimiento();

  if (estado==0) {
    pantallas(textos[0], width/2, height/2, 50 );
  } else if (estado==1) {
    pantallas(textos[1], width/2, 100, 30 );
  } 

}
 void mousePressed() {
  estado ++;
}
void pantallas(String texto, int px, int py, int tamText) {
  textSize(tamText);
  textAlign(CENTER);
  fill(255, 0, 0);
  text(texto, px, py);
}


void calcularMovimiento() {
  calcularQueEstaSaltando();
}


void calcularQueEstaSaltando() {
  if (keyPressed && keyCode == UP && !personaje1) {
    personaje1 = true;
    personaje_estaSaltandoDireccion = 1; 
  } else if (
    personaje1 && 
    personaje_estaSaltandoDireccion == 1 &&
    personaje_posY < topeSalto) {
    personaje_estaSaltandoDireccion = -1;
  } else if (
    personaje1 && 
    personaje_estaSaltandoDireccion == -1 &&
    personaje_posY > topePiso) {
    personaje_estaSaltandoDireccion = 0;
    personaje1 = false;
  } else if (personaje1 && personaje_estaSaltandoDireccion == 1) {
    personaje_posY-=personaje_velocidadSalto;
  } else if (personaje1 && personaje_estaSaltandoDireccion == -1) {
    personaje_posY+=personaje_velocidadSalto;
  }
}
