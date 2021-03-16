public void setup()
{
  size(640, 640);
  noStroke();
}

public void draw()
{
  background(0, 0, 0);
  sierpinski(0, 0, width);
}

public void sierpinski(int x, int y, int len) 
{
  if (len<=20) {
    triangle(x, y, x+len, y, x+len/2, y+(float)(Math.sqrt(3)/2)*len);
  }
  else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y+(int)((Math.sqrt(3)/2)*(len/2)), len/2);
  }
}
