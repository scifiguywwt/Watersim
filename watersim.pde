int width = 1000, height = 500;
droplet d1 = new droplet(width/2, height/2, 15);
droplet d2 = new droplet(width/2 + 35, height/2, 15);

droplet[] droplets = new droplet[3];


void setup() {
  size(width, height);
  for(int i = 0; i<droplets.length; i++) {
    droplets[i] = new droplet(random(0, width), random(0, height), 15);
  }
}

void draw() {
  background(255);
  
  for(int i = 0; i<droplets.length; i++) {
    droplets[i].update();
    droplets[i].drawdroplet();
    for(int j = 0; j<droplets.length; j++) {
      tension(droplets[i], droplets[j]);
    }
  }
}
