Bacteria[] bacteria;
int bacteriaCount = 1000;

void setup() {     
 	size(800,600);
  background(0);
  frameRate(60);
  bacteria = new Bacteria[bacteriaCount];
  for(int i=0; i<bacteria.length; i++) {
    int x = (int)(width*Math.random());
    int y = (int)(height*Math.random());
    int r = (int)(255*Math.random()+1);
    int g = (int)(255*Math.random()+1);
    int b = (int)(255*Math.random()+1);
    bacteria[i] = new Bacteria(x,y,r,g,b);
  }
}
void draw() {
 	for(int i=0; i<bacteria.length; i++) {
    bacteria[i].show();
  }
}  

class Bacteria {
  float x_pos;
  float y_pos;
  float radius;
  int red;
  int green;
  int blue;
  
 	public Bacteria(float x, float y, int r, int g, int b) {
    x_pos = x;
    y_pos = y;
    red = r;
    green = g;
    blue = b;
  }
  
  void show() {
    pushMatrix();
    translate(x_pos,y_pos);
    fill(red,green,blue);
    ellipse(0,0,15,15);
    popMatrix();
  }
}    
