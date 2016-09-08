Die dice;

void setup()
{
	
	size(500,500);
	noLoop();
}

void draw()
{	background(0,150,0);
	int sumDots = 0;
	for(int x = 10; x < 490; x = x + 60){
		for(int y = 70; y < 460; y = y +60){
			Die dice = new Die(x,y);
			dice.show();
			sumDots = sumDots + dice.numDots;
		}
	}
	fill(255);
	textSize(40);
	textAlign(TOP,TOP);
	text("How many seeds? " + sumDots, 0,0);
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
		numDots = (int)(Math.random()*6)+1;

	}
	void show()
	{
		strokeWeight(5);
		stroke(255);
		fill(200,0,0);
		rect(myX,myY,50,50,100);
		stroke(0);
		int right = myX + 15;
		int mid = myX + 25;
		int left = myX + 35;
		int top = myX + 15;
		int bottom = myY + 35;
		if (numDots == 1){	
			point(mid,mid);
		}
		else if (numDots == 2){
			point(right,top);
			point(left,bottom);
		}
		else if (numDots == 3){
			point(right,top);
			point(mid,mid);
			point(left, bottom);
		}
		else if (numDots == 4){
			point(right, top);
			point(left, top);
			point(right, bottom);
			point(left, bottom);
		}
		else if (numDots == 5){
			point(right, top);
			point(right, mid);
			point(right, bottom);
			point(left, top);
			point(left, mid);
			point(left, bottom);
		}
		else {
			
		}

	}
}
