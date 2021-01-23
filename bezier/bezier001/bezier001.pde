size(400,400);
background(255);
noFill();
strokeWeight(4); 
bezier(100,200,200,100,200,300,300,200);

translate(200,200);
scale(2);
rotate(HALF_PI);
strokeWeight(10);
stroke(255,0,0,80);
bezier(-100,0, 0,-100, 0,100, 100,0);
