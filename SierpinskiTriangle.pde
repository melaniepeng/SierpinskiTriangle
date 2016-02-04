int h = 20;
int limit = h;
public void setup()
{
	size(800,800);
}
public void draw()
{
	background(225);
	sierpinski(15,775,h);
}
public void mouseClicked()//optional
{
	h = h + 50;
	limit = limit - 20;
	if (limit < 10)
	{
		limit = h;
	}
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= limit)
	{
		frameRate(10);
		fill(random(225),random(225),random(225),random(200));
		triangle(x+len/2,y-len,x,y,x+len,y);
	}
	else
	{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}

}