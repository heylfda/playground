
ArrowSystem arrow_sys;
float noise_idx = 1000;
float noise_idy = 0;
float noise_step = 0.003;

void setup(){
  fullScreen();
  //size(500, 500);
  arrow_sys = new ArrowSystem(300, 300, 0.1, width/2, height/2);
  
}

void draw(){
  strokeWeight(2);
  background(255);
  arrow_sys.update();
  arrow_sys.display();
  
  arrow_sys.cx = noise(noise_idx) * width;
  arrow_sys.cy = noise(noise_idy) * height; 
  
  noise_idx += noise_step;
  noise_idy += noise_step;
}


void mouseMoved() {
  //arrow_sys.cx = mouseX;
  //arrow_sys.cy = mouseY;
}

void keyPressed() {
  if(keyCode==ENTER){
    saveFrame();
  }
}
