
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
   
   hojaParametrica(12, color(0,255,0) , 150 , 400 , 200, new PVector(0, -1 )  , new PVector(1, 1 )   );
   
   hojaParametrica(5 , color(255,0,0) , 150 , 400 , 600, new PVector(-1, 0 )  ,  new PVector(1, -1 ) );
   
   hojaParametrica(8 , color(0,0,0) , 150 , 400 , 400,  new PVector(0.5,1)  ,   new PVector(-2, 0 ) );

   
}

void mousePressed() {
   redraw();  
}

void hojaParametrica(int ca, float co, float ta, float x, float y, PVector mi, PVector md) {
  noFill();
  stroke(co);
  //scale( sc );
  //bezier(-1,0,  0,-1, 0,1, 1, 0 );
  pushMatrix();
  translate(x,y);
  rotate( radians( 45 ) );
  for(int i=0  ;  i<ca ;  i++ ) {
    float manI = map(i, 0, ca, mi.x, mi.y);
    float manD = map(i, 0, ca, md.x, md.y);
    bezier(-1*ta,0,  0,manI*ta, 0,manD*ta, 1*ta, 0 );
  }
  popMatrix();
}
