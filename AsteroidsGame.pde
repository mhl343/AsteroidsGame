Spaceship bob;
Star []sue;
ArrayList <Asteroids> albert;
public void setup(){
size (500,500);
bob= new Spaceship();
sue= new Star[200];
for (int i=0;i<sue.length;i++){
sue[i]= new Star();
}
albert= new ArrayList <Asteroids>();
for (int i=0;i<=20;i++){
	albert.add(new Asteroids ());
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

  for (int i=0;i<albert.size();i++){
  	albert.get(i).move();
  	albert.get(i).show();
 
  if (dist((float)albert.get(i).getX(),(float)albert.get(i).getY(),(float)bob.getX(),(float)bob.getY())<20){
	albert.remove(i);
  }
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


