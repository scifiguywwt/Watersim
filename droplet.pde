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
    yVel = yVel + .03;
    xPos = xPos + xVel;
    yPos = yPos + yVel;
  }
  
  void drawdroplet() {
    fill(0,0,255);
    ellipse(xPos, yPos, radius, radius);
  }
}
