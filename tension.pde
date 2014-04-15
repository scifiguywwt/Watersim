float idealdistance = 30;
float idealrange = 10;
float attractrange = 500;
float attraction = .5;

void tension(droplet d1, droplet d2) {
  
  if (sqrt(pow((d1.xPos - d2.xPos), 2) + pow(d1.yPos - d2.yPos, 2)) > idealdistance + idealrange && (sqrt(pow((d1.xPos - d2.xPos), 2) + pow(d1.yPos - d2.yPos, 2)))< attractrange) {
    stroke(255, 0, 0);
    line(d1.xPos, d1.yPos, d2.xPos, d2.yPos);
    attract(d1, d2);
    println("Far tension called");
    
  } else if (sqrt(pow((d1.xPos - d2.xPos), 2) + pow(d1.yPos - d2.yPos, 2)) < idealdistance - idealrange) {
    stroke(0, 255, 0);
    line(d1.xPos, d1.yPos, d2.xPos, d2.yPos);
    repel(d1, d2);
    println("Near tension called");
    
  } else if (sqrt(pow((d1.xPos - d2.xPos), 2) + pow(d1.yPos - d2.yPos, 2)) > idealdistance - idealrange && sqrt(pow((d1.xPos - d2.xPos), 2) + pow(d1.yPos - d2.yPos, 2)) < idealdistance + idealrange ) {
    stroke(0);
    line(d1.xPos, d1.yPos, d2.xPos, d2.yPos);
    if (d1.xVel > 0) {
      d1.xVel -= attraction;
    } else if (d1.xVel < 0) {
      d1.xVel += attraction;
    }
    
    if (d2.xVel > 0) {
      d2.xVel -= attraction;
    } else if (d2.xVel > 0) {
      d2.xVel += attraction;
    }
  }
}

void attract(droplet d1, droplet d2) {
  d1.xVel += .03*(d2.xPos - d1.xPos)/sqrt(pow((d1.xPos - d2.xPos), 2) + pow(d1.yPos - d2.yPos, 2));
  d2.xVel += .03*(d1.xPos - d2.xPos)/sqrt(pow((d1.xPos - d2.xPos), 2) + pow(d1.yPos - d2.yPos, 2));
  
  d1.yVel += .03*(d2.yPos - d1.yPos)/sqrt(pow((d1.xPos - d2.xPos), 2) + pow(d1.yPos - d2.yPos, 2));
  d2.yVel += .03*(d1.yPos - d2.yPos)/sqrt(pow((d1.xPos - d2.xPos), 2) + pow(d1.yPos - d2.yPos, 2));
}

void repel(droplet d1, droplet d2) {
  
}
