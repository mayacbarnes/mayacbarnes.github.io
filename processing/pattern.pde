
float x, y;
float s;
float r, g, b;
float rs, gs, bs;
float rot;
float sw;

void setup() {
  size(800, 600);
  rs=2.6;
  gs=2.6;
  bs=2.6;
  rectMode(CENTER);
  noFill();
  s=200;
}

void draw() {
  background(100);

  for (x=0; x<width+50; x=x+50) {
    for (y=0; y<height+50; y=y+50) {
      pushMatrix();
      translate(x, y);
      rotate(radians(rot));
      stroke(r,g,b);
      strokeWeight(random(0,6));
    rect(0,0,8000,2+y);
     rect(0,0,800,600*random(0,200));

      popMatrix();
    }
  } 
  rot=rot+2.7;
  s=random(1, 100);
  colorFade();
}
void colorFade() {
  r=r+rs;
  g=g+gs;
  b=b+bs;
  if (r>255||r<0) {
    rs=rs*-1;
  }
  if (g>255||g<0) {
    gs=gs*-1;
  }
  if (b>255||r<0) {
    bs=bs*-1;
  }
}
