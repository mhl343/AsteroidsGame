class Spaceship extends Floater  
{   
    public Spaceship(){
    	myCenterX= 250; 
    	myCenterY= 250;
    	myDirectionX= 3;
    	myDirectionY= 3;
    	myPointDirection=5;
    	myColor= color (255);
        corners =4;
        xCorners= new int []{-16,-4,-16,32};
        yCorners= new int []{-16,0,16,0}; 
    }
    public void setX (double x){
        myCenterX=x;
    }
    public void setY(double y){
         myCenterY=y;
    }
    public void setPointDirection(double x){
        myPointDirection=x;
    }
    public void setDirectionY(int y){
        myDirectionY=y;
    }
    public void setDirectionX(int x){
        myDirectionX=x;
    }
    public double getX (){
        return myCenterX;
    }
    public double getY(){
        return myCenterY;
    }

}
