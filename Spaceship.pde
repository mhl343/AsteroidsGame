class Spaceship extends Floater  
{   
    public Spaceship(){
    	myCenterX= 250; 
    	myCenterY= 250;
    	myDirectionX= 3;
    	myDirectionY= 3;
    	myPointDirection=5;
    	myColor= color (174,135,245);
    	corners= 3;
    	xCorners=new int [corners] ;
    	yCorners= new int [corners]; 
    	xCorners[0]=-12;
    	yCorners[0]=-12;
    	xCorners[1]=24;
        xCorners[2]=-12;
    	yCorners[2]=12;
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

}
