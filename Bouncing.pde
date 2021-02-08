PImage img; 
PVector pos, vel;

void setup () {
  size(600, 600);
  
  pos = new PVector(300, 300);
  vel = PVector.random2D();
  vel.mult(4.5);
  
  img = loadImage("naruto.png");
}

void draw () {
  background(10,90,90);
  
  fill(0,20,30);
  noStroke();
  ellipse(pos.x, pos.y, 80, 80);
  image(img,pos.x - img.width * 0.5, pos.y - img.height *0.5);
  
  pos.add(vel);
  if (pos.x < 0 || pos.x > width) {
    vel.x *= -1;
  }
  
  if (pos.y < 0 || pos.y > height) {
    vel.y *= -1;
  }
}

void mousePressed() {
  vel = PVector.random2D();
  vel.mult(4.5);
}
