int limit = 5;
int x = 60;
int y = 500;
public void setup()
{
	size(600,600);
}
public void draw()
{
	background(225);
	//background(135,191,235);
	sierpinski(x,y,500);
}
public void mouseClicked()//optional
{
	limit = limit + 5;
	if (limit > 100)
	{
		limit = 10;
	}
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= limit)
	{
		noStroke();
		frameRate(10);
		fill(random(225),random(225),random(225),random(200));
		triangle(x, y, x-len/2, y+len, x+len/2, y+len);
	}
	else
	{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}

}