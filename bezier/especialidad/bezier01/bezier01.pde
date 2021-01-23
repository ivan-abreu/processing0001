
void setup() {
  size(800,800);
  noLoop();
  background(255,255,0);
  strokeWeight(1);
  strokeCap(SQUARE);
  stroke( 255 , 0 , 0, 255 );
  frameRate( 5 );
}

void draw() {
   noFill();
   
   if (  mousePressed == true   &&   mouseButton == RIGHT  ) {
     line(200,400,  mouseX,mouseY);
     bezier(200,400,  mouseX,mouseY, 400,600, 600,400  );
   } else if (  mousePressed == true   &&   mouseButton == LEFT ) {
     line( mouseX,mouseY, 600,400 );
     bezier(200,400, 400,600 , mouseX,mouseY, 600,400  );
   }
   
}

void mousePressed() {
   redraw();
   println(  suma( 10, 6 ) );
}

void suma(int A, int B) {
  return A + B;
}

float segundo = obtenerSegundos();

float obtenerSegundos() {
  return segundosvideo
}
