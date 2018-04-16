import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

//RevolveBall : 
//PVector _center 
//float _radius
//PVector rotateAngle
//float speed

ArrayList<RevolveBall> particles = new ArrayList<RevolveBall>();
int total = 70;
PeasyCam cam ;
void setup(){
  size(600,600,P3D);
  cam = new PeasyCam(this,200);
  for(int i = 0;i<total*4;i++){
    particles.add(new RevolveBall(new PVector(0,0,0),
                                  random(200,210),
                                  new PVector(random(0,360),
                                              random(0,360),
                                              random(0,360)),
                                  random(5,10)));
  }
  for(int i = 0;i<total*2;i++){
    particles.add(new RevolveBall(new PVector(0,0,0),
                                  random(350,360),
                                  new PVector(random(0,360),
                                              random(0,360),
                                              random(0,360)),
                                  random(5,10)));
  }
  for(int i = 0;i<total*3;i++){
    particles.add(new RevolveBall(new PVector(0,0,0),
                                  random(270,280),
                                  new PVector(random(0,360),
                                              random(0,360),
                                              random(0,360)),
                                  random(5,10)));
  }
  
}

void draw(){
  background(0,10);
  for(RevolveBall particle : particles){
    particle.transform();
    particle.display();
  }
  
}