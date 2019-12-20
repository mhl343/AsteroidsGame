Spaceship bob;
Star []sue;
ArrayList <Asteroids> albert;
ArrayList <Bullet> toby;
boolean gameOver=false;

public void setup(){
size (500,500);
bob= new Spaceship();
sue= new Star[200];
for (int i=0;i<sue.length;i++){
sue[i]= new Star();
}
albert= new ArrayList <Asteroids>();
for (int i=0;i<=10;i++){
	albert.add(new Asteroids ());
}
toby=new ArrayList <Bullet>();
}

public void draw()
{
  background (86,81,95);
  if (gameOver==true){
  	fill (4,20,69);
  	text ("Game over",230,250);
  }else{


  bob.move();
  bob.show();
  for (int i=0;i<sue.length;i++){
  	sue[i].show();
  }

  for (int i=0;i<albert.size();i++){
  	albert.get(i).move();
  	albert.get(i).show();
	float crash=dist((float)bob.getX(),(float)bob.getY(),(float)albert.get(i).getX(),(float)albert.get(i).getY());
  	if (crash<10){
  		gameOver=true;

  	}
  }
 
  /*if (dist((float)albert.get(i).getX(),(float)albert.get(i).getY(),(float)bob.getX(),(float)bob.getY())<20){
	albert.remove(i);
  }*/

for (int i=0;i<toby.size();i++){
	toby.get(i).move();
	toby.get(i).show();
}
for (int i=0;i<albert.size();i++){
	for (int a=0;a<toby.size();a++){
		if (dist((float)albert.get(i).getX(),(float)albert.get(i).getY(),(float)toby.get(a).getX(),(float)toby.get(a).getY())<20){
			toby.remove(a);
			albert.remove(i);
			break;
  		}
	}
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
	if (key=='s'){
		toby.add(new Bullet(bob));
	}
}


