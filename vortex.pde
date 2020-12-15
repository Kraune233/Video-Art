void setup() {
  fullScreen();

  colorMode(HSB, 255);
  smooth();
}

void draw() {
  background(20);
  for (int i = 0; i < 1; i++) {
    for (int j = 0; j < 40; j++) {
      pushMatrix();

      translate(width/2, height/2);

      float ratio = (i*9  + j)/6.0;
      float angle = sin(millis() / 1200.0 +  ratio * (PI/3)) * TWO_PI/5;
      float angle2 = cos(millis() / 1200.0 +  ratio * (PI/6)) * TWO_PI/6;
      
      float a =200*sin(angle)+400;
      float b =200*cos(angle)+400;
  
      strokeWeight(5*random(2));
      stroke(255);
      noFill();
      rectMode(CENTER);
      rotate(angle);
      ellipse(0, 0, a, b);
      rotate(angle2);
      ellipse(0, 0, b*2, a*2);
      popMatrix();
    }
    saveFrame("frames/####.png");
  }
}
