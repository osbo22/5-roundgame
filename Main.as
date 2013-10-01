package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author Oskar Bohlin
	 */
	public class Main extends Sprite 
	{
		var bHP:int = 150;
		var bDM:int = new int;
		var hHP:int = 150;
		var hDM:int = new int;
		var t:TextField = new TextField();
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			t.width = 500;
			t.height = 500;
			t.border = true;
			addChild(t);
			
			
			for (var i:int = 1; i < 6; i++)
			{
				bDM = 10 + 25 * Math.random();
				hDM = 10 + 25 * Math.random();
				hHP -= bDM;
				bHP -= hDM;
				if ( hHP && bHP >= 0 ){
				t.appendText("Round " + i +":\n" +"Barbarian Bengt deals " + bDM + " damage so Human Henrik has " +(hHP) + " hp left.\n");
				t.appendText("Human Henrik deals " + hDM + " damage so Barbarian Bengt has " +(bHP) + " hp left.\n\n"); 
				}
				
				
				
				
			}
			
		}
		
		
		
	}
	
}