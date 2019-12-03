Spaceship bob;
Star []sue;
public void setup(){
size (500,500);
bob= new Spaceship();
sue= new Star[200];
for (int i=0;i<sue.length;i++){
sue[i]= new Star();
}
}

public void draw()
{
  background (86,81,95);
  bob.move();
  bob.show();
  for (int i=0;i<sue.length;i++){
  	sue[i].show();
  }
}
public void keyPressed(){
	if (key =='l'){
		bob.turn(-5);
	}
	if (key=='r'){
		bob.turn(5);
	}
	if (key==('a')){
		bob.accelerate(4);
	}
	if (key==('h')){
		bob.setX(Math.random()*500);
		bob.setY(Math.random()*500);
		bob.setPointDirection(Math.random()*360);
		bob.setDirectionX (0);
		bob.setDirectionY(0);
		
	}
}


