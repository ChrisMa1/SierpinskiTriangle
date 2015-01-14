public void setup(){
 size(800,800);
 background(255);
}
int blah=0;
public void draw(){
  sierpinski(400,700,blah);
  if(blah>1600&& blah%1600==0){
    blah=1600;  
  }
  blah+=50;
}
public void mouseClicked()//optional
{
  background(255);
  blah=0;
}
public void sierpinski(float x, float y, float len) {//x,y is midpoint of base
  if(len<25){
      
  }else{
    noStroke();
    fill(0);
    triangle(x-len/2, y, x+len/2, y, x, y-len*sqrt(3)/2);
    fill(255);
    triangle(x,y,x-len/4,y-len*sqrt(3)/4, x+len/4,y-len*sqrt(3)/4);
    sierpinski(x-len/4,y, len/2);
    sierpinski(x, y-len*sqrt(3)/4, len/2);
    sierpinski(x+len/4,y, len/2);
  }
}
