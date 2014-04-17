class droplet {
  float xPos;
  float yPos;
  float xVel;
  float yVel;
  float radius;
  
  droplet(float x, float y, float rad) {
    xPos = x;
    yPos = y;
    radius = rad;
  }
  
  void update() {
    yVel = yVel + .1;
    xPos = xPos + xVel;
    yPos = yPos + yVel;
    if (yPos >= height - radius || yPos <= radius) {
      if (yVel > .1) {
        yVel = -yVel + .01;
      } else {
        yVel = 0;
        yPos = height - radius;
      }
    }
    if (xPos >= width-radius || xPos <= radius) {
      xVel = -xVel;
    }
  }
  
  void drawdroplet() {
    stroke(0);
    fill(0,0,255);
    ellipse(xPos, yPos, radius, radius);
  }
}
