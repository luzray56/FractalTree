private double fractionLength = .75;
private int smallestBranch = 10; 
private double branchAngle = .8;  
public void setup() 
{   
	size(700,700);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));  
	line(350,600,350,480);   
	drawBranches(350,480,120,3*Math.PI/2);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	branchLength = branchLength * fractionLength;
	double angle1 = angle + branchAngle;
	double angle2 = angle - branchAngle;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	line(x, y, endX1, endY1);
	line(x, y, endX2, endY2);
	if (branchLength > smallestBranch)
	{
		stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		drawBranches(endX1, endY1, branchLength, angle1);
		drawBranches(endX2, endY2, branchLength, angle2);
	}
	
} 
