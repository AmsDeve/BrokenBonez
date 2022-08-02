package;

import flixel.*;
import openfl.display.Sprite;

class Main extends Sprite
{
	var skipIntro:Bool = false;

	public function new()
	{
		super();
		addChild(new FlxGame(0, 0, MenuState, skipIntro));
	}
}
