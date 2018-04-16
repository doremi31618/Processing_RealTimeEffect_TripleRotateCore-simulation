class RevolveBall{
  float radius;
  PVector center;
  PVector position = new PVector(0,0,0);
  
  float speed;
  
  float xAngle;
  float yAngle;
  float zAngle;
  
  RevolveBall(PVector _center ,
              float _radius,
              PVector rotateAngle,
              float _speed)
  {
    center = _center;
    radius = _radius;
    speed = _speed;
    
    xAngle = rotateAngle.x;
    yAngle = rotateAngle.y;
    zAngle = rotateAngle.z;
    
  }
  float angle = 0;
  float t = 0;
  void transform(){
    angle += speed;
    if(angle==360)
      angle = 0;
    t = map(angle,0,360,0,PI);
    //(int)radius*noise(3*
    position.x = center.x + (int)radius*cos(t);
    position.z = center.z + (int)radius*sin(t);
    position.y = center.y;
    
  }
  void display(){
    pushMatrix();
    
    rotateX(xAngle);
    rotateY(yAngle);
    rotateZ(zAngle);
    
    stroke(map(speed,5,10,73,73),    
           map(speed,5,10,240,210),
           map(speed,5,10,230,77),180);
    strokeWeight(5);
    
    point(position.x,position.y,position.z);
    
    popMatrix();
  }
  
}