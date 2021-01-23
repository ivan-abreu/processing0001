
void setup() {
  size(800,800);
  noLoop();
  
  
  //strokeCap(SQUARE);
  //stroke( 255 , 0 , 0, 55 );
  //frameRate( 5 );
}

void draw() {
  background(255,255,0);
  int filas = 7;
  int columnas = 4;
  int total = filas * columnas;
  int iTotal = 0;
  for(int f=0; f<filas; f++  ) {
    for ( int c = 0; c<columnas; c++) {
      float x = map( c, 0, columnas-1, 100, 700);
      float y = map( f, 0, filas-1, 100, 700);
      float ang = 0;//map(iTotal, 0, total, 0, 90);
       hojaParametrica( random(2,20) , color(255,255,255) , 90 , x , y, new PVector(random(-1,1), random(-1,1) )  , new PVector(random(-1,1), random(-1,1) ),   ang );
       
       iTotal++;
       //hojaParametrica(5 , color(255,0,0) , 120 , 400 , 600, new PVector(-1, 0 )  ,  new PVector(1, -1 ),  45);
       
       //hojaParametrica(8 , color(0,0,0) , 120 , 400 , 400,  new PVector(0.5,1)  ,   new PVector(-2, 0 ),  90);
       
       //hojaParametrica(8 , color(0,0,0) , 120 , 400 , 400,  new PVector(0.5,1)  ,   new PVector(-2, 0 ),  90);
    }
  }
   
}

void mousePressed() {
   redraw();  
}

void hojaParametrica(float ca, float co, float ta, float x, float y, PVector mi, PVector md, float gr) {
  noFill();
  stroke(co, 250);
  strokeWeight(0.5);
  //scale( sc );
  //bezier(-1,0,  0,-1, 0,1, 1, 0 );
  pushMatrix();
  translate(x,y);
  rotate( radians( gr ) );
  for(int i=0  ;  i<ca ;  i++ ) {
    float manI = map(i, 0, ca, mi.x, mi.y);
    float manD = map(i, 0, ca, md.x, md.y);
    bezier(-1*ta,0,  0,manI*ta, 0,manD*ta, 1*ta, 0 );
  }
  popMatrix();
}
