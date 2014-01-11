package code.managers
/*
	* AUTHOR : MATT STENQUIST
	* LICENSE: DO WHATEVER YOU PLEASE
*/
{
	/*
	*.... If you're not using Starling then just subsitute in the normal Flash libraries 
	*....import flash.display.Sprite;
	*....import flash.events.Event;
	*....Don't forget to edit the Trace statements
	*....You also don't need to have a stageSetup function. 
	*.....You can also just make cases functions.
	*/        
	import starling.display.Sprite;
	import starling.events.Event;
	import flash.system.*;
	
	import code.screens.StudioScreen;
	import code.screens.GameOverlay;
	import code.screens.AdScreen;
	import code.screens.MenuStartup;
	import code.screens.MenuDifficulty;
	import code.screens.ChooseSave;

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
		public static var STATE:uint = 0;						
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
			trace("[AXION ENGINE] :: **** STUDIO MANAGER ACTIVE");
			this.removeEventListener(Event.ADDED_TO_STAGE, stageSetup);
		}
		//-------------------------------------------------------------------------|
		
		//-------------------------------------------------------------------------|
		//##HANDLE STATE|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
		//-------------------------------------------------------------------------|
		public function handleState(STATE:int):void {			
			switch(STATE) {		
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
			trace("[AXION ENGINE] :: SCREEN SWITCHED TO AD SCREEN");
			_adScreen = new AdScreen();
			this.addChild(_adScreen);
		}
		//--STUDIO SCREEN (LOGOS)
		public function screenStudio() {
			trace("[AXION ENGINE] :: SCREEN SWITCHED TO STUDIO SCREEN");
			_studio = new StudioScreen();
			this.addChild(_studio);
		}
		//--FX OVERLAY SCREEN
		public function screenOverlay() {
			trace("[AXION ENGINE] :: SCREEN SWITCHED TO OVERLAY FX");
			_overlay = new GameOverlay();
			this.addChild(_overlay);
		}
		//--SAVE SLOT SCREEN
		public function screenSaveSlot() {
			trace("[AXION ENGINE] :: SCREEN SWITCHED TO SAVE SLOT");
			_saveSlot = new ChooseSave();
			this.addChild(_saveSlot);
		}
		//--MENU STARTUP SCREEN
		public function screenMenuStart() {
			trace("[AXION ENGINE] :: SCREEN SWITCHED TO MENU STARTUP");
			_menuStartup = new MenuStartup();
			this.addChild(_menuStartup);
		}
		//--MENU DIFFICULTY SCREEN
		public function screenDifficulty() {
			trace("[AXION ENGINE] :: SCREEN SWITCHED TO MENU DIFFICULTY");
			_menuDifficulty = new MenuDifficulty();
			this.addChild(_menuDifficulty);
		}
		public function removeAll():void {
			this.removeChild(_menuDifficulty);
			this.removeChild(_menuStartup);
			this.removeChild(_saveSlot);
			this.removeChild(_studio);
			this.removeChild(_adScreen);
			System.gc();
			super.dispose();
		}
	}
}