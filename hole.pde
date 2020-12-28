
int a=0;
int i;

void setup()
{
  fullScreen();
  background(0);
  strokeWeight(15);
  fill(0,15);
  stroke(245);
}

void draw() {
  translate(width/2,height/2);
  for (i=0;i<10;i++){
    rotate(sin(a*.004)*13) ;
    scale(0.8);
 
    ellipse(0,0,600,900+cos(a*.008)*120);
  } 
 a++;
 saveFrame("frames/####.png");
}
