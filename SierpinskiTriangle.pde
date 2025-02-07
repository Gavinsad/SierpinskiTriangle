public void setup()
{
size(500,500);
background(255,255,255);
}
public void draw()
{

}
public void mouseClicked()//optional
{

  fill( color(255,0,0));
sierpinski(mouseX-100,mouseY+100,200);
}
public void sierpinski(int x, int y, int len) 
{
  if(len<=2){
    fill( color(255,0,0));
  triangle(x,y,x+len,y,x+len/2,y-len/2);}
  else{
  sierpinski(x,y,len/2);
  sierpinski(x+len/2,y,len/2);
  sierpinski(x+len/4,y-len/2,len/2);
  }
}
