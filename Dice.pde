Die dice;

void setup()
{
	
	size(500,500);
	noLoop();
}

void draw()
{	background(0,150,0);
	int sumDots = 0;
	for(int j = 1; j <= 6; j++){
		for(int i = 1; i <= 8; i++){
			Die dice = new Die(i*60-50,70*j);
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
		int midX = myX + 25;
		int midY = myY + 25;
		int left = myX + 35;
		int top = myY + 15;
		int bottom = myY + 35;
		if (numDots == 1){	
			point(midX,midY);
		}
	
		else if (numDots == 2){
			point(right,top);
			point(left,bottom);
		}
		else if (numDots == 3){
			point(right,top);
			point(midX,midY);
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
			point(right, bottom);
			point(midX,midY);
			point(left, top);
			point(left, bottom);
		}
		else if (numDots == 6){
			point(right, top);
			point(right, midY);
			point(right, bottom);
			point(left, top);
			point(left, midY);
			point(left, bottom);
		}
	}
}

