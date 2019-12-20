class Bullet extends Floater{
	private double dRadians;
	public Bullet(Spaceship bob){
		myCenterX=bob.getX();
		myCenterY=bob.getY();
		myPointDirection=bob.getPointDirection();
		dRadians= myPointDirection*(Math.PI/180);
		myDirectionX=5*Math.cos(dRadians)+bob.myDirectionX;
		myDirectionY=5*Math.sin(dRadians)+bob.myDirectionY;
	}
	public void show(){
		fill (255,0,0);
		noStroke();
		ellipse ((float)myCenterX,(float)myCenterY,7,7);
	}
	public void move(){
		myCenterX+=myDirectionX; 
		myCenterY+=myDirectionY; 
	}
	public double getX(){
		return myCenterX; 
	}
	public double getY(){
		return myCenterY; 
	}

}
