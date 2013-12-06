class ActorRelation extends Relation{

//FIELDS
	Actor actor;
	Animal animal;
	int attitude; //-10 to +10
	int interest; // -10 to +10
	int dangerRadius;
	int safeRadius;
    float speed = -20;


//CONSTRUCTOR
public ActorRelation(Actor actor, Animal animal){
	this.actor = actor;
	this.animal = animal;
	attitude = 0;
	interest = 0;
	dangerRadius = 1000;
	safeRadius = 2000;
}

Actor getActor(){
	return actor;
}

int getAttitude(){
	return attitude;
}

int getInterest(){
	return interest;
}

int getDangerRadius(){
	return dangerRadius;
}

int getSafeRadius(){
	return safeRadius;
}

PVector getActorVector(PVector animalPosition){
	PVector something = new PVector(0,0,0);
	return something;
}


PVector getResultVector(){
	PVector something = PVector.sub(actor.getPosition(), animal.getPosition());

	float distance = something.mag();
	if(distance<dangerRadius){
		speed = -50;
	} else if (distance >=dangerRadius && distance < safeRadius){
		speed = -10;
	} else if (distance >= safeRadius){
		speed = 0;
	}
	something.setMag(speed);
	return something;
}

public void updateRelationship(){

}

}
