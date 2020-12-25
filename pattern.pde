SoundFile song;
Amplitude analyzer;
ArrayList fish = new ArrayList();
float ss;
float  e,side, theta, inR, circR;
float r=95;
int a;
float x;
float y;
float alpha=255;
void setup() {
//size(1200,800);
fullScreen();
  side = 120;
  inR =0.4*side;
  circR = 0.5*side;
  strokeJoin(ROUND);
  }

void draw() {
 // background(255);
  
  fill(255,30);//0000000
  rect(-10, -10, width+20, height+20);//000000000
  //fill(0, 150, 255, 20);//0000000
    println(ss);
   theta+= .003;
   e = map(sin(theta), -1, 1, PI, -PI); 
    stroke(46,29,169);
    strokeWeight(3); 



  //adjust location of ('ss'") circle
  strokeWeight(1.2); 
//row 1 -first one =================================================================
  pushMatrix();
  translate(width/2+89, height/2-255);
  pushMatrix();
  translate(0, -circR+70);
  rotate(0);
  branch6(side/1.6-41);
  popMatrix();

  pushMatrix();
  translate( side/4-18, inR-20);
  rotate(TWO_PI/4);
  branch6(side/1.6-41);
  popMatrix();

  pushMatrix();
  translate( -side/4+30, inR-5);
  rotate(TWO_PI/2);
  branch6(side/1.6-41);
  popMatrix();
   
  pushMatrix();
  translate( -side/4+18, inR-20);
  rotate(TWO_PI/2+PI/2);
  branch6(side/1.6-41);
  popMatrix();
  popMatrix();
//row 2 -first one=================================================================

  pushMatrix();
  translate(width/2-325, height/2-135);
  pushMatrix();
  translate(0, -circR+80);
  rotate(0);
  branch8(side/1.6-50);
  popMatrix();
//each side
  pushMatrix();
  translate( side/4-25, inR-20);
  rotate(TWO_PI/4);
  branch8(side/1.6-50);
  popMatrix();

  pushMatrix();
  translate( -side/4+30, inR-15);
  rotate(TWO_PI/2);
  branch8(side/1.6-50);
  popMatrix();
   
  pushMatrix();
  translate( -side/4+25, inR-20);
  rotate(TWO_PI/2+PI/2);
  branch8(side/1.6-50);
  popMatrix();
  popMatrix();
   
 //row 2 - second one=================================================================
  pushMatrix();
  translate(width/2-190, height/2+5);
  // draw the center circle(the trunk)
  pushMatrix();
  translate(0, -circR+60);
  //rotate(0);
  branch7(side/1.6-37);
  popMatrix();

  pushMatrix();
  translate( side/4-35, inR-50);
  rotate(TWO_PI/3);
  branch7(side/1.6-37);
  popMatrix();

  pushMatrix();
  translate( -side/4+35, inR-50);
  rotate(TWO_PI/1.5);
  branch7(side/1.6-37);
  popMatrix();
  popMatrix();
  
 //row 2 -third one=================================================================
  pushMatrix();
  translate(width/2-20, height/2-65);
  pushMatrix();
  translate(0, -circR+80);
  rotate(0);
  branch9(side/1.6-50);
  popMatrix();
//each side
  pushMatrix();
  translate( side/4-25, inR-20);
  rotate(TWO_PI/4);
  branch9(side/1.6-50);
  popMatrix();

  pushMatrix();
  translate( -side/4+30, inR-15);
  rotate(TWO_PI/2);
  branch9(side/1.6-50);
  popMatrix();
   
  pushMatrix();
  translate( -side/4+25, inR-20);
  rotate(TWO_PI/2+PI/2);
  branch9(side/1.6-50);
  popMatrix();
  popMatrix();
   
//row2 fourth one==========================================
  pushMatrix();
  translate(width/2+310, height/2-95);
  pushMatrix();
  translate(0, -circR+80);
  rotate(0);
  branch2(side/1.6-50);
  popMatrix();

  pushMatrix();
  translate( side/4-25, inR-20);
  rotate(TWO_PI/4);
  branch2(side/1.6-50);
  popMatrix();

  pushMatrix();
  translate( -side/4+30, inR-15);
  rotate(TWO_PI/2);
  branch2(side/1.6-50);
  popMatrix();
   
  pushMatrix();
  translate( -side/4+25, inR-20);
  rotate(TWO_PI/2+PI/2);
  branch2(side/1.6-50);
  popMatrix();
  popMatrix();
 
//row3 first one===========================================
  pushMatrix();
  translate(width/2+85, height/2+130);
  // draw the center circle(the trunk)
  pushMatrix();
  translate(0, -circR+60);
  //rotate(0);
  branch5(side/1.6-37);
  popMatrix();

  pushMatrix();
  translate( side/4-35, inR-50);
  rotate(TWO_PI/3);
  branch5(side/1.6-37);
  popMatrix();

  pushMatrix();
  translate( -side/4+35, inR-50);
  rotate(TWO_PI/1.5);
  branch5(side/1.6-37);
  popMatrix();
  popMatrix();
}

//row 1 -first one=================================================================
void branch(float side) {
  // calculate next ellipse scale
  float inR = side * 0.4;
  float circR = side *0.5;
  float h = inR + circR; 
 triangle (-side/2, -h, side/2, -h, 0, 0);
 ellipse(0,-h/2,h/2,h/2);
  // the recursive calls

  if (side > 4) {
    translate(0, -circR);
    side /= 1.6; // scale triangle size
    pushMatrix();
    rotate(e);
    translate(0, -circR);
    branch(side);
    popMatrix(); 
//small branches
    pushMatrix();
    rotate(-0.3*e);   
    translate(0, -circR);
    branch(side);
    popMatrix();
  }
}
//row 1-second  one=================================================================
void branch3(float side) {
  // calculate next ellipse scale
  float inR = side ;
  float circR = side *0.5;
  float h = inR + circR; // or side * sqrt(3)/2

ellipse(0,-h/2,h-10,h-10);
  // the recursive calls

  if (side > 4) {
    translate(0, -circR);
    side /= 1.6; // scale triangle size
    pushMatrix();
    rotate(3*e);
    translate(0, -circR);
    branch3(side);
    popMatrix(); 
//small branches
    pushMatrix();
    rotate(e);   
    translate(0, -circR);
    branch3(side);
    popMatrix();
  } 
}
//row 1-third one=================================================================
void branch2(float side) {
  // calculate next ellipse scale
  float inR = side * 0.4;
  float circR = side *0.5;
  float h = inR + circR; // or side * sqrt(3)/2

ellipse(0,-h/2,h,h);
  // the recursive calls

  if (side > 3) {
    translate(0, -circR);
    side /= 1.6; // scale triangle size
    pushMatrix();
    rotate(e);
    translate(0, -circR);
    branch2(side);
    popMatrix(); 
//small branches
    pushMatrix();
    rotate(-e);   
    translate(0, -circR);
    branch2(side);
    popMatrix();
  }
  
}

//row 2 -first one=================================================================
void branch4(float side) {
  // calculate next ellipse scale
  float inR = side * 2*0.4;
  float circR = side *2*0.5;
  float h = inR +circR; // or side * sqrt(3)/2
// triangle (-side/2, -h, side/2, -h, 0, 0);
 ellipse(0,-h/2,h,h);
  // the recursive calls

  if (side > 3) {
    translate(0, -circR);
    side /= 1.6; // scale triangle size
    pushMatrix();
    rotate(e);
    translate(0,-circR);
    branch(-side);
    popMatrix(); 
//small branches
    pushMatrix();
    rotate(-.6*e);   
    translate(0, circR);
    branch(side);
    popMatrix();
  }
  
}
//row 2-second  one=================================================================
void branch5(float side) {
  // calculate next ellipse scale
  float inR = side ;
  float circR = side *0.5;
  float h = inR + circR; // or side * sqrt(3)/2

ellipse(0,-h/2,h,h);
  // the recursive calls

  if (side > 4) {
    translate(0, -circR);
    side /= 1.6; // scale triangle size
    pushMatrix();
    rotate(e);
    translate(0, 3*circR);
    branch3(side);
    popMatrix(); 
//small branches
    pushMatrix();
    rotate(0.8*e);   
    translate(0, -circR);
    branch3(side);
    popMatrix();
  }
  
}
//row 2-third one=================================================================
void branch6(float side) {
  // calculate next ellipse scale
  float inR = -side * 0.4;
  float circR = -side *0.5;
  float h = inR - 2*circR; // or side * sqrt(3)/2
triangle (-side/2, -h, side/2, -h, 0, 0);
//ellipse(0,-h/2,h,h);
  // the recursive calls

  if (side > 3) {
    translate(0, circR);
    side /= 1.6; // scale triangle size
    pushMatrix();
    rotate(e);
    translate(0, -circR);
    branch2(side);
    popMatrix(); 
//small branches
    pushMatrix();
    rotate(-e);   
    translate(0, -circR);
    branch2(side);
    popMatrix();
    }
    }
void branch7(float side) {
  // calculate next ellipse scale
  float inR = -side * 0.4;
  float circR = -side *0.5;
  float h = inR - 2*circR; // or side * sqrt(3)/2
ellipse(-side/2, -h, 0, 0);
//ellipse(0,-h/2,h,h);
  // the recursive calls

  if (side > 3) {
    translate(0, circR);
    side /= 1.6; // scale triangle size
    pushMatrix();
    rotate(e);
    translate(0, -circR);
    branch(side);
    popMatrix(); 
//small branches
    pushMatrix();
    rotate(-e);   
    translate(0, -circR);
    branch(side);
    popMatrix();
}
}

void branch8(float side) {
  // calculate next ellipse scale
  float inR = -side * 0.4;
  float circR = -side *0.5;
  float h = inR - 2*circR; // or side * sqrt(3)/2
ellipse(-side/2, -h/2,0,0);//ellipse(0,-h/2,h,h);
  // the recursive calls

  if (side > 3) {
    translate(0, circR);
    side /= 1.6; // scale triangle size
    pushMatrix();
    rotate(e);
    translate(0, -circR);
    branch2(side);
    popMatrix(); 
//small branches
    pushMatrix();
    rotate(-e);   
    translate(0, -circR);
    branch2(side);
    popMatrix();
}
}
void branch9(float side) {
  // calculate next ellipse scale
  float inR = -side * 0.4;
  float circR = -side *0.5;
  float h = inR - 2*circR; // or side * sqrt(3)/2
rect(-side/2, -h/2,side/4,side/4);//ellipse(0,-h/2,h,h);
ellipse(0, -h/2,h,h);  // the recursive calls

  if (side > 4) {
    translate(0, circR);
    side /= 1.6; // scale triangle size
    pushMatrix();
    rotate(e);
    translate(0, -circR);
    branch3(side);
    popMatrix(); 
//small branches
    pushMatrix();
    rotate(-e);   
    translate(0, -circR);
    branch3(side);
    popMatrix();
    }
    
}
