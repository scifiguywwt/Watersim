int width = 640, height = 480;
droplet d1 = new droplet(width/2, height/2, 15);

void setup() {
  size(width, height);
}

void draw() {
  background(255);
  d1.update();
  d1.drawdroplet();
}
