int len = 400;
public void setup() {
  size(500, 500);
  noStroke();
}
public void draw() {
  background(0);
  sierpinski(width/2-len/2, height/2+len/2, len, 1,1);
}
public void tri(int x, int y, int len) {
  triangle(x, y, x+len/2, y-len, x+len, y);
} 
public void sierpinski(int x, int y, int len, int pt, int max) {
  if (len <= mouseX) {
    tri(x, y, len);
  } else {
    sierpinski(x, y, len/2, pt + 1, max);
    sierpinski(x + len/2, y, len/2, pt + 1, max);
    sierpinski(x + len/4, y-len/2, len/2, pt+1, max);
  }
}
