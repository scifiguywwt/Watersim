float idealdist = 50;
float affected = 2*sqrt(idealdist*idealdist - idealdist) - 1;
float range = idealdist/10;
boolean lines = true;
float holdconstant = .1;
float repelconstant = .5;

void tension(droplet d1, droplet d2) {
  float distance = sqrt(pow(d1.xPos - d2.xPos, 2) + pow(d1.yPos - d2.yPos, 2));
  
  if (distance < affected) {
    if (distance > idealdist + range) {
      attract(d1, d2);
    } else if (distance < idealdist - range) {
      repel(d1, d2);
    } else {
      hold(d1, d2);
    }
  }
}

void attract(droplet d1, droplet d2) {
  float distance = sqrt(pow(d1.xPos - d2.xPos, 2) + pow(d1.yPos - d2.yPos, 2));
  if (lines) {
    stroke(0, 0, 255);
    line(d1.xPos, d1.yPos, d2.xPos, d2.yPos);
  }
  d1.xVel += (d2.xPos - d1.xPos)/distance;
  d1.yVel += (d2.yPos - d1.yPos)/distance;
}

void repel(droplet d1, droplet d2) {
  float distance = sqrt(pow(d1.xPos - d2.xPos, 2) + pow(d1.yPos - d2.yPos, 2));
  if (lines) {
    stroke(255, 0, 0);
    line(d1.xPos, d1.yPos, d2.xPos, d2.yPos);
  }
  if (d1.xPos > d2.xPos) {
    d1.xVel += repelconstant;
  } else if (d1.xPos < d2.xPos) {
    d1.xVel -= repelconstant;
  }
  
    if (d1.yPos > d2.yPos) {
    d1.yVel += repelconstant;
  } else if (d1.yPos < d2.yPos) {
    d1.yVel -= repelconstant;
  }
}

void hold(droplet d1, droplet d2) {
  float distance = sqrt(pow(d1.xPos - d2.xPos, 2) + pow(d1.yPos - d2.yPos, 2));
  if (lines) {
    stroke(0, 255, 0);
    line(d1.xPos, d1.yPos, d2.xPos, d2.yPos);
  }
  if (d1.xVel > holdconstant) {
     d1.xVel -= holdconstant;
  } else if (d1.xVel < -holdconstant) {
    d1.xVel += holdconstant;
  } else {
    d1.xVel = 0;
  }
  if (d1.yVel > holdconstant) {
    d1.yVel -= holdconstant;
  } else if (d1.yVel < -holdconstant) {
    d1.yVel += holdconstant;
  } else {
    d1.yVel = 0;
  }
}
