A simple screen Mananger Class.

Looks like this

public function handleState():void {
	state =3 ; 	//SET STATE	 				
	switch(state) {										
		case AD:  
		screenAd(); //0
		break;

		case STUDIO: 
		screenStudio(); //1
		break;

		case STARTMENU:	
		screenMenuStart(); //2
		break; 

		case DIFFICULTY: 
		screenDifficulty();//3
		break;

		case OVERLAY: 
		screenOverlay(); //4
		break;

		case SAVESLOT: 
		screenSaveSlot(); //5
		break;
	}
