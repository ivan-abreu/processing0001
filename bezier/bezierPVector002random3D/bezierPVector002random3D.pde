int total = 20;
PVector[] p1=new PVector[total];
PVector[] m1=new PVector[total];
PVector[] m2=new PVector[total];
PVector[] p2=new PVector[total];

void setup() {
  size(400, 400, P3D);
  for (int i=0; i<total; i++ ) {
    p1[i] = new PVector(-10*i, 0, 0); 
    m1[i] = new PVector( 0, random(-400, 0), -200 );
    m2[i] = new PVector( 0, random(0, 400), 200 );
    p2[i] = new PVector(10*i, 0, 0);
  }
}

void draw() {
  background(255);
  noFill();
  translate(200, 200, 0);
  //scale(2);
  float anguloY = map(mouseX, 0, width, -HALF_PI, HALF_PI);
  rotateY(anguloY);
  float anguloX = map(mouseY, 0, height, -HALF_PI, HALF_PI);
  rotateX(anguloX);
  strokeWeight(1);
  stroke(255, 0, 0, 80);
  for (int i=0; i<total; i++ ) {
    bezier(p1[i].x, p1[i].y, p1[i].z, 
           m1[i].x, m1[i].y, m1[i].z, 
           m2[i].x, m2[i].y, m2[i].z, 
           p2[i].x, p2[i].y, p2[i].z);
  }
}
