class Asteroids extends Floater{
	private int rotSpeed;
	public Asteroids(){
		rotSpeed=(int)Math.random()*5-2;
		myCenterX= Math.random()*500;
		myCenterY=Math.random()*500;
		myDirectionX= Math.random()*5-2;
    	myDirectionY= Math.random()*5-2;
    	myPointDirection=180;
		myColor= color (149,145,211);
		corners =6;
		xCorners= new int []{-11,7,13,6,-11,-5};
		yCorners= new int []{-8,-8,0,10,8,0}; 
	}
	public void  move(){
    	turn (rotSpeed);
    	super.move();
	}
	 public double getX (){
        return myCenterX;
    }
    public double getY(){
        return myCenterY;
    }
}
