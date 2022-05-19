PImage img;
int Producer;
PFont fuente;

//cierre variables

void setup(){
 size(800,500);
 background(0);
textSize(40);
img = loadImage ("imagen.jpg");
fuente=loadFont("fuente.vlw");
Producer = frameCount;

} 



void draw(){
 background(0);
  
  if(frameCount > 0 && frameCount < 150){
  
   image (img,1,1,800,500); 
   textFont(fuente);
   textSize(40);
  loadFont("fuente.vlw");
}
  
    if(frameCount>150 && frameCount <300) {
      text("Producer : Daniel George McDonald",190,200);
      text("Produced By : Greg Whiteky",220,250 ); 
      text("Director of Photography : Terry Zumalt",170,300);
    }
  
    println(Producer);    
    Producer = frameCount;
    if(frameCount>300 && frameCount <450) {
      text("Executive Producer : Joe Labracio",190,200);
      text("Editors : James Atkinson",220,250 ); 
      text("Mark Morgan",220,300);
    }
   println(Producer);    

      if (frameCount > 450 && frameCount <600){        
        text("Colorist : Jordan Branch",220,200);
        text("Onoine Editor : Ben Neufeld",220,250);
        text("Dialogue Editors : Kaleb Klingler",220,300);
      }
      
 

if(frameCount>600 && frameCount<20000){
  textSize(random(80,81));
  fill(#FF2E2E);
  text("Reiniciar Capítulo",200,150,100);
}

if (frameCount>600){
fill(#FFFFFF);
  ellipse(400,250,50,50);
} 
}

  void mousePressed() {
  if(mouseX<450 && mouseY>220 && mouseX>220 && mouseY<470){
    frameCount=0;
}
  }
