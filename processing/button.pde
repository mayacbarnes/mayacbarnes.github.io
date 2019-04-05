void setup() {

 size(800,800);
}

void draw() {

  background(255);
  if (mouseX<width/2 && mouseY<height/2) {
    fill(0, 0, 255);
    rect(0,0,width/2,height/2);
  } else if (mouseX>width/2) {background(224,0,255);}

  if (mouseX>width/2 && mouseY<height/2) {
    fill(255, 0, 0);
    rect(width/2, 0, width/2, height/2);
  }
  if (mouseX>width/2 && mouseY>height/2) {
    fill(0, 255, 0);
    rect(width/2, height/2, width/2, height/2);
  } 
  if (mouseX<width/2 && mouseY>=height/2){
  fill(50,50,50);
  rect(0,height/2,width/2,height/2);
  }
  if(!mousePressed) {
    ellipse(width/2,height/2,100,100);
  }
}
