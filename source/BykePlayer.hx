package;

import flixel.*;

class BykePlayer extends FlxSprite
{
	public function new(x:Float, y:Float)
	{
		super(x, y);

		frames = Paths.getSparrowAtlas('conducerAssets_Sprites');
		animation.addByPrefix('acelerate', 'moto run run instancia 1', 24, true);
		animation.addByPrefix('trick', 'truco 1 instancia 1', 24, false);
		animation.addByPrefix('dead', 'death *calavera* instancia 1', 24, false);
		animation.play('acelerate');
		antialiasing = true;
	}

	function jump() {}
}
