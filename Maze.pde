int numRect = 30;
int[]rectX = new int[numRect];
int[]rectY = new int[numRect];
int squareNum=40*40; 
int sideLength=20;
int rectW = 80;
int rectH = 80;
float t;
float tra;
float trb;
float easing =0.5;


void setup() {
  fullScreen();
  int step = rectW;
  for (int i = 0; i < numRect - 1; i ++) {
    rectX[i] = step-width;
    rectY[i] = step-height;
    step = step + rectW * 2;
  }
}


void draw() {
  background(0);
  fill(255);
  noStroke();
  rectMode(CENTER);
  translate(width/2, height/2);
  float m = millis()*0.001;
  float deg = sin(m);
  float degree = map(deg, -1, 3.5, -HALF_PI, HALF_PI/2);
  float dega = cos(2*m);
  
  rotate(degree);
 for(int i=0;i<width/sideLength*3;i++){
    for(int j=0;j<height/sideLength*3;j++){
      Square newSquare=new Square(sideLength*i*2,sideLength*j*2,sideLength*2);
      newSquare.display();

    }
  }
  rotate(-degree*3);
  for (int i = 0; i < numRect - 1; i ++) {
     t= map(dega, -1, 1, 80, 50);
    for (int j = 0; j < numRect - 1; j ++) {
      float size = map(t, 30, 50, 20, 0);
      rect(rectX[i], rectY[j], size, size);
      fill(random(0, 150), random(0, 20),30);
      Square newSquare=new Square(sideLength*i*2,sideLength*j*2,sideLength*2);
      newSquare.display();
      println(t);
      noStroke();
    }
  }
}
