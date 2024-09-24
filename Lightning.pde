int startX = 0;
int startY = (int)random(0,800);
int endX = 0;
int endY = 150;

void setup() {
  size(800,800);  
  strokeWeight(5);
}

void draw() {
  //stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  background(1,1,1,1);
  stroke(50,50,50);
  fill(200,200,200);
  ellipse(150,150,100,100);
  ellipse(650,150,100,100);
  ellipse(150,650,100,100);
  ellipse(650,650,100,100);
  stroke(255,255,0);
}

void mouseDragged() {
  startX = mouseX;
  startY = mouseY;
  endX = 0;
  endY = 150;
  lightning();
}

void lightning() {
  while(endX < 800) {
    endX = startX + (int)(Math.random()*9);
    endY = startY + (int)random(-9,9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

