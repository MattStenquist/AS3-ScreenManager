package code.managers
/*
<<<<<<< HEAD
        * AUTHOR : MATT STENQUIST
        * LICENSE: DO WHATEVER YOU PLEASE
*/ 
{
    /*
   		*If you're not using Starling then just subsitute in the normal Flash libraries 
    	*....import flash.display.Sprite;
   		*....import flash.events.Event;
    	*...
    	*..
    	*.
    	* Don't forget to edit the Trace statements
    	* You also don't need to have a stageSetup function. 
   		* You can also just make cases functions.
    */        
=======
	AUTHOR : MATT STENQUIST
	LICENSE: DO WHATEVER THE FUCK YOU WANT
*/

package managers
{
	/*
	*.... If you're not using Starling then just subsitute in the normal Flash libraries 
	*....import flash.display.Sprite;
	*....import flash.events.Event;
	*....Don't forget to edit the Trace statements
	*....You also don't need to have a stageSetup function. 
	*.....You can also just make cases functions.
	*/	
	
>>>>>>> df5d618f301c92d8cb329a831974d763916c3563
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
<<<<<<< HEAD
		public var _studio:StudioScreen;						//..STUDIO SCREEN
		public var _overlay:GameOverlay;						//..FX OVERLAY
		public var _saveSlot:ChooseSave;						//..SAVE SLOT 
		public var _adScreen:AdScreen;							//..AD SCREEN
		public var _menuStartup:MenuStartup;					//..MENU STARTUP
		public var _menuDifficulty:MenuDifficulty;				//..MENU DIFFICULTY
		//-------------------------------------------------------------------------|
		//##SCREEN STATES----------------------------------------------------------|
		public static var STATE:uint = 0;						//..SPECIFY STATE 
		public const AD:int = 0;								//..AD STATE
		public const STUDIO:int = 1;							//..STUDIO STATE
		public const STARTMENU:int = 2;							//..START STATE
		public const DIFFICULTY:int = 3;						//..DIFF STATE
		public const OVERLAY:int = 4;							//..OVERLAY STATE
		public const SAVESLOT:int = 5;							//..SAVESLOT STATE
=======
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
>>>>>>> df5d618f301c92d8cb329a831974d763916c3563
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
<<<<<<< HEAD
		public function handleState(STATE:int):void {			
			switch(STATE) {		
=======
		public function handleState():void {
			state = AD; 	//SET STATE ("INT OR WORD")	 				
			switch(state) {										
>>>>>>> df5d618f301c92d8cb329a831974d763916c3563
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
<<<<<<< HEAD
		public function removeAll():void {
=======
		//-------------------------------------------------------------------------|
		
		//-------------------------------------------------------------------------|
		//##CLEANUP ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
		//-------------------------------------------------------------------------|
		public function removeScreens():void {
>>>>>>> df5d618f301c92d8cb329a831974d763916c3563
			this.removeChild(_menuDifficulty);
			this.removeChild(_menuStartup);
			this.removeChild(_saveSlot);
			this.removeChild(_studio);
			this.removeChild(_adScreen);
			System.gc();
			super.dispose();
		}
		//-------------------------------------------------------------------------|
		//#ENDFILE-----------------------------------------------------------------|
		//-------------------------------------------------------------------------|
	}
}
