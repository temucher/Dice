//Teagan Mucher, "Dice", Block 4 AP Computer Science

Die omega;
Die theta;
int total, numDots;
void setup()
{
	size(500,500);
	noLoop();
	omega = new Die(50, 50);
	theta = new Die(200, 50);
}
void draw()
{	
	total = 0;
	omega.roll();
	omega.show();
	total = total + numDots;
	theta.roll();
	theta.show();
	total = total + numDots;
	textSize(20);
	text(total, 250, 250);
}
void mousePressed()
{
	background(195);
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, rows;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		numDots = (int)(Math.random()*6+1);
	}
	void show()
	{
		fill(255);
		rect(myX, myY, 100, 100);
		if(numDots == 1)
		{
			fill(0);
			ellipse(myX+50, myY+50, 20, 20);
		}
		if(numDots == 2)
		{
			fill(0);		
			int q = 35;
			for(int i = 1; i<=numDots; i++)
			{
				ellipse(myX+q, myY+50, 15,15);
				q += 30;
			}
		}
		if(numDots == 3)
		{
			fill(0);
			int w = 20;
			for(int i = 1; i<=numDots; i++)
			{
				ellipse(myX + w, myY + w, 15, 15);
				w += 30;
			}
		}
		if(numDots == 4)
		{
			fill(0);
			int r = 30;
			for(int i = 1; i <= 2; i++)
			{	
				int z = 35;
				for(int s = 1; s <=2; s++)
				{
					ellipse(myX + z, myY + r, 15,15);
					z += 35;
				}
				r += 30;
			}
		}
		if(numDots == 5)
		{
			fill(0);
			int r = 25;
			for(int i = 1; i <= 2; i++)
			{	
				int z = 35;
				for(int s = 1; s <=2; s++)
				{
					ellipse(myX + z, myY + r, 15,15);
					z += 35;
				}
				r += 50;
			}
			ellipse(myX+50,100,15,15);
		}
		if(numDots == 6)
		{
			fill(0);
			int r = 23;
			for(int i = 1; i <= 3; i++)
			{	
				int z = 35;
				for(int s = 1; s <=2; s++)
				{
					ellipse(myX + z, myY + r, 15,15);
					z += 35;
				}
				r += 30;
			}
		}	
	}
}
