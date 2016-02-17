public void setup()
{
	size(500, 500);
	background(0);
}
public void draw()
{
	myFractal(500, 250, 250);
}
public void myFractal(int x, int y, int siz)
{
	noFill();
	ellipse(x/2, y, siz, siz);
	//ellipse(x, y/2, siz, siz);
	if(siz > 10)
	{
		stroke(0, 0, 250);
		strokeWeight(1/4);

		myFractal(x - siz/2, y-siz/2, siz/2);
		myFractal(x + siz/2, y+siz/2, siz/2);
		myFractal(x + siz/2, y-siz/2, siz/2);
		myFractal(x - siz/2, y+siz/2, siz/2);
		
	}
}