int startX = 0;
int startY = (int)random(0,800);
int endX = 0;
int endY = 150;
int trueEndX;
int trueEndY;
int rise = 0;
int run = 0;

void setup() {
  size(800,800);  
  strokeWeight(5);
}

void draw() {
  background(1,1,1);
  stroke(255,255,0);
  lightning();
  stroke(50,50,50);
  fill(200,200,200);
  ellipse(150,150,120,120);
  ellipse(650,150,120,120);
  ellipse(150,650,120,120);
  ellipse(650,650,120,120);
  stroke(255,255,0);
}

void mouseMoved() {
  
  if(mouseX < 400) {
    trueEndX = 150;
    if(mouseY < 400) {
      trueEndY = 150;
    } 
    else if (mouseY > 400) 
      trueEndY = 650;
  } 
  else if (mouseX > 400) {
    trueEndX = 650;
    if(mouseY < 400) {
      trueEndY = 150;
    } 
    else if (mouseY > 400) 
      trueEndY = 650;
  }
  startX = mouseX;
  startY = mouseY;
  endX = 400;
  endY = 400;
}

void lightning() {
  
  startX = mouseX;
  startY = mouseY;
  run = trueEndX - mouseX;
  rise = trueEndY - mouseY;
  
  for(int i = 0; i < 15; i++) {
    endX = startX + run/15 + (int)((Math.random()*16)-8);
    endY = startY + rise/15 + (int)((Math.random()*16)-8);
    line(startX, startY, endX , endY);
    startX = endX;
    startY = endY;
  }
  
}






