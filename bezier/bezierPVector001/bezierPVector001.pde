size(400,400);
background(255);
noFill();

translate(200,200);
//scale(2);
//rotate(HALF_PI);
strokeWeight(10);
stroke(255,0,0,80);
for(int i=0; i<100; i++ ) {
  PVector p1 = new PVector(-100, 0); 
  PVector m1 = new PVector(0, -100);
  PVector m2 = new PVector(0, 100);
  PVector p2 = new PVector(100 , 0);
  
  bezier(p1.x ,p1.y , m1.x, m1.y, m2.x , m2.y , p2.x, p2.y);
}
