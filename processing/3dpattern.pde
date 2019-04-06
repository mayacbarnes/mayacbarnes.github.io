
float x,y;
float r,g,b;
float rs,gs,bs;
float rot;
float sw;

void setup(){
  size(1080,720,P3D);
  rs=1.1;
  gs=3.3;
  bs=5.7;
  rectMode(CENTER);
  x=width/2;
  y=height/2;
  noFill();
}

void draw(){
  background(255);


  for(x=0;x<width;x=x+70){
    for(y=0;y<height;y=y+70){
  pushMatrix();

  translate(x,y);
  rotateX(radians(rot));
 rotateY(radians(rot));
 rotateZ(radians(rot));

  stroke(r);
  strokeWeight(4);

 box(80,110,1500);

  popMatrix();


    }
  }

  rot=rot+.2;
  colorFade();
  sw=r;
}

void colorFade(){
   r=r+rs;
  g=g+gs;
  b=b+bs;
  if(r>255||r<0){
    rs=rs*-1;
  }
   if(g>255||g<0){
    gs=gs*-1;
  }
   if(b>255||r<0){
    bs=bs*-1;
  }
}
