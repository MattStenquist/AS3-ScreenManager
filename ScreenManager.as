/*
	AUTHOR : MATT STENQUIST
	LICENSE: DO WHATEVER THE FUCK YOU WANT
*/

package managers
{
	/*
	//.... If you're not using Starling then just subsitute in the normal Flash libraries 
	//....import flash.display.Sprite;
	//....import flash.events.Event;
	//....Don't forget to edit the Trace statements
	//....You also don't need to have a stageSetup function. 
	*/	
	
	import starling.display.Sprite;
	import starling.events.Event;

	import screens.StudioScreen;
	import screens.GameOverlay;
	import screens.AdScreen;
	import screens.MenuStartup;
	import screens.MenuDifficulty;
	import screens.ChooseSave;

	public class ScreenManager extends Sprite
	{
		//##SCREEN OBJECTS---------------------------------------------------------|
		public var _studio:StudioScreen; 
		public var _overlay:GameOverlay; 
		public var _saveSlot:ChooseSave; 
		public var _adScreen:AdScreen;	
		public var _menuStartup:MenuStartup; 
		public var _menuDifficulty:MenuDifficulty; 
		//-------------------------------------------------------------------------|
		//##SCREEN STATES----------------------------------------------------------|
		public var state:int;	
		public const AD:int = 0;			
		public const STUDIO:int = 1;			
		public const STARTMENU:int = 2;			
		public const DIFFICULTY:int = 3;		
		public const OVERLAY:int = 4;		
		public const SAVESLOT:int = 5;			
		//-------------------------------------------------------------------------|

		//-------------------------------------------------------------------------|
		//##STAGE SETUP|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
		//-------------------------------------------------------------------------|
		public function ScreenManager()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, stageSetup);
		}
		private function stageSetup(event:Event):void {
			trace("[ENGINE] :: **** SCREEN MANAGER ACTIVE");
			this.removeEventListener(Event.ADDED_TO_STAGE, stageSetup);
		}
		//-------------------------------------------------------------------------|
		
		//-------------------------------------------------------------------------|
		//##HANDLE STATE|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
		//-------------------------------------------------------------------------|
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
		}
		//-------------------------------------------------------------------------|

		//-------------------------------------------------------------------------|
		//##CREATE SCREENS||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
		//-------------------------------------------------------------------------|
		//--ADVERTISEMENT SCREEN
		public function screenAd() {
			trace("[ENGINE] :: THIS SCREEN WAS CREATED");
			_adScreen = new AdScreen();
			this.addChild(_adScreen);
		}
		//--STUDIO SCREEN (LOGOS)
		public function screenStudio() {
			trace("[ENGINE] :: THIS SCREEN WAS CREATED");
			_studio = new StudioScreen();
			this.addChild(_studio);
		}
		//--FX OVERLAY SCREEN
		public function screenOverlay() {
			trace("[ENGINE] :: THIS SCREEN WAS CREATED");
			_overlay = new GameOverlay();
			this.addChild(_overlay);
		}
		//--SAVE SLOT SCREEN
		public function screenSaveSlot() {
			trace("[ENGINE] :: THIS SCREEN WAS CREATED");
			_saveSlot = new ChooseSave();
			this.addChild(_saveSlot);
		}
		//--MENU STARTUP SCREEN
		public function screenMenuStart() {
			trace("[ENGINE] :: THIS SCREEN WAS CREATED");
			_menuStartup = new MenuStartup();
			this.addChild(_menuStartup);
		}
		//--MENU DIFFICULTY SCREEN
		public function screenDifficulty() {
			trace("[ENGINE] :: THIS SCREEN WAS CREATED");
			_menuDifficulty = new MenuDifficulty();
			this.addChild(_menuDifficulty);
		}
		//-------------------------------------------------------------------------|
		
		//-------------------------------------------------------------------------|
		//##CLEANUP ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
		//-------------------------------------------------------------------------|
		public function removeScreens():void {
			this.removeChild(_menuDifficulty);
			this.removeChild(_menuStartup);
			this.removeChild(_saveSlot);
			this.removeChild(_studio);
			this.removeChild(_adScreen);
			//System.gc();
			super.dispose();
		}
		//-------------------------------------------------------------------------|
		//#ENDFILE-----------------------------------------------------------------|
		//-------------------------------------------------------------------------|
	}
}
