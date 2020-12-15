float num = 27, sides = 4;
float tran, rot, dis;
float vm  = 3, vd = 3;
boolean play = true;


void setup() {
 fullScreen();
  colorMode(HSB, 360, 100, 100);
}

void draw() {  
  background(0, 0, 100);
  polygonDance();
}

void polygonDance() {
  pushMatrix();
  translate(width/2, height/2);
  for (float i = num; i > 0; i--) { 
    rotate(radians(rot));
    bow(int(i));
    strokeWeight(map(i, 1, num, 3, 1));
    polygon(tran, 0, map(i, 2, num, frameCount*1.2, 150), sides);
  }
  popMatrix();  
  move();
}

void move() {
  rot  = map(dis, 0, 270*3, 0, 360);
  tran = tran + vm;
  dis  = dis + vd;
  if (tran == 270 || tran == 0)
    vm = vm * -1;
  if (dis == 270*3)
    vd = vd * -1;
}

void polygon(float x0, float y0, float r, float n) {
  beginShape();
  for (float i = 0; i <= n; i ++) {
    float  x = r*cos(2*PI*i/n - PI/4) + x0;
    float  y = r*sin(2*PI*i/n - PI/4) + y0;
    vertex(x, y);
  }
  endShape(CLOSE);
}

void bow(float i) {
  if (i %2 == 0) {
    fill(0);
    stroke(0, 0, 100);
  } else {
    fill(0, 0, 100);
    stroke(0, 0, 100);
  }
}
