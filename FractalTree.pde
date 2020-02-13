private double fractionLength = .85; 
private int smallestBranch = 30; 
private double branchAngle = .9;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,255);   
	line(320,480,320,380);   
	drawBranches(320,380,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1, angle2;
	int endx1, endx2, endy1, endy2;

	angle1=angle+branchAngle;
	angle2=angle-branchAngle;
	branchLength=branchLength*fractionLength;

	endx1 = (int)(branchLength*Math.cos(angle1) + x);
	endy1 = (int)(branchLength*Math.sin(angle1) + y);

	endx2 = (int)(branchLength*Math.cos(angle2) + x);
	endy2 = (int)(branchLength*Math.sin(angle2) + y);

	line(x,y,endx1,endy1);
	line(x,y,endx2,endy2);



	if (branchLength>=smallestBranch){
		//angle+=0.25;
		drawBranches(endx1,endy1,branchLength,angle-0.3);
		drawBranches(endx2,endy2,branchLength,angle-0.1);

	}
	

} 
