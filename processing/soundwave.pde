float x;
int c = 0;

void setup() {
  size(800, 600);
}
void draw() {
  background(255);
  float r =random(10, 50);
  for (x=0; x<width; x=x+1) {
    line(x, height/2-r, x, height/2+r);
    r=r+random(-1, 1);
  }
}
