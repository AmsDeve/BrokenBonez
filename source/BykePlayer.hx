package;

import flixel.*;

class BykePlayer extends FlxSprite
{
	public static var instance:BykePlayer;

	public static var GRAVITY:Int = 600;

	public var angleDir:Float = 0;

	public static var isMulti:Bool;

	public static var SPEED:Int = 500;

	public var players:Int = 1;

	public function new(x:Float, y:Float)
	{
		super(x, y);

		drag.y = SPEED * 5;

		if (isMulti)
		{
			for (i in 0...players)
			{
				frames = Paths.getSparrowAtlas('conducerAssets_Sprites');
				animation.addByPrefix('acelerate', 'moto run run instancia 1', 24, true);
				animation.addByPrefix('trick', 'truco 1 instancia 1', 24, false);
				animation.addByPrefix('dead', 'death *calavera* instancia 1', 24, false);
				animation.play('acelerate');
				antialiasing = true;
			}
		}
		else
		{
			frames = Paths.getSparrowAtlas('conducerAssets_Sprites');
			animation.addByPrefix('acelerate', 'moto run run instancia 1', 24, true);
			animation.addByPrefix('trick', 'truco 1 instancia 1', 24, false);
			animation.addByPrefix('dead', 'death *calavera* instancia 1', 24, false);
			animation.play('acelerate');
			antialiasing = true;
		}
		acceleration.y = GRAVITY;

		angle = angleDir;
	}

	public function moveByke()
	{
		velocity.x = SPEED / 1.5;
	}

	function jump(?elapsed:Float)
	{
		var jumpDir = FlxG.keys.anyPressed([UP, W, SPACE]);
		var jumpR = FlxG.keys.anyJustReleased([UP, W, SPACE]);
		if (jumpDir && isTouching(FlxObject.FLOOR))
		{
			velocity.y = -GRAVITY / 1.5;
			if (FlxG.keys.anyJustPressed([SPACE, UP, W]))
			{
				animation.play('trick');
			}
		}
		if (jumpR)
		{
			angleDir += elapsed * 5;
			if (angleDir < 70)
			{
				angleDir = 70;
			}
		}
		if (isTouching(FlxObject.FLOOR))
		{
			angleDir = 0;
		}
	}

	override public function update(elapsed:Float)
	{
		jump(elapsed);
		moveByke();
		super.update(elapsed);

		if (animation.curAnim.name == 'trick' && animation.curAnim.finished)
		{
			animation.play('acelerate');
		}
	}
}
