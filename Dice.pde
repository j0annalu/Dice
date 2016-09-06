Die dice;

void setup()
{
	background(0,150,0);
	size(500,500);
	noLoop();
}
void draw()
{
	dice = new Die(0,0);
	dice.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY,numDots;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		numDots = (int)(Math.random()*7)-1;
	}
	void show()
	{
		noStroke();
		rect(myX,myY,50,50,20);
		if (numDots == 1){

		}
		else if ()

	}
}
