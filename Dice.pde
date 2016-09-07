Die dice;

void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	for(int x = 10; x < 490; x = x + 60){
		for(int y = 70; y < 460; y = y +60){
			Die dice = new Die(x,y);
			dice.show();
		}
	}
	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, numDots;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
		numDots = (int)(Math.random()*2)+1;
	}
	void show()
	{
		strokeWeight(5);
		stroke(255);
		fill(200,0,0);
		rect(myX,myY,50,50,20);
		stroke(0);
		if (numDots == 1){	
			point(myX+25,myY+25);
		}
		else if (numDots == 2){
			point(myX+10, myY+10);
			point(myX+40, myY+ 40);
		}

	}
}
