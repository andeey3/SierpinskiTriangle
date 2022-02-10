int joe = 300;
public void setup() {
  size(500, 500);
  noStroke();
}
public void draw() {
  background(0);
  sierpinski(10, 500, joe);
}
public void mousePressed() {
  background(0);
  joe += 200;
} 
public void sierpinski(int x, int y, int len) {
  if (len <= 90) {
    triangle(x, y, x+len/2, y-len, x+len, y);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y-len/2, len/2);
  }
}
