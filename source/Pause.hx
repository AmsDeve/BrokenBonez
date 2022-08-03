import flixel.*;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class Pause extends FlxSubState
{
	var menu:FlxText;
	var resume:FlxText;
	var scoreText:FlxText;
	var level:Int = 0;

	public function new()
	{
		super();

		var bg = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		bg.alpha = 0.7;
		bg.screenCenter(X);
		bg.scrollFactor.set();
		add(bg);

		var coolText = new FlxText(0, 100, 'Game Paused!', 80);
		coolText.scrollFactor.set();
		coolText.screenCenter(X);
		add(coolText);

		menu = new FlxText(0, 320, 'Exit', 80);
		menu.screenCenter(X);
		menu.scrollFactor.set();
		add(menu);

		resume = new FlxText(0, 440, 'Resume', 80);
		resume.screenCenter(X);
		resume.scrollFactor.set();
		add(resume);

		scoreText = new FlxText(10, 10, 0, "", 19);
		scoreText.scrollFactor.set();
		add(scoreText);

		cameras = [FlxG.cameras.list[FlxG.cameras.list.length - 1]];
	}

	override function update(elapsed:Float)
	{
		var lerpScore:Int = 0;
		var intendedScore:Int = 0;

		lerpScore = Math.floor(FlxMath.lerp(lerpScore, intendedScore, 0.5));

		scoreText.text = "LEVEL SCORE:" + lerpScore;

		intendedScore = Score.getLevelScore(level);

		FlxG.mouse.visible = true;
		super.update(elapsed);

		if (FlxG.mouse.overlaps(menu))
		{
			menu.color = FlxColor.YELLOW;

			if (FlxG.mouse.pressed)
			{
				FlxG.switchState(new MenuState());
			}
		}
		else
		{
			menu.color = FlxColor.WHITE;
		}

		if (FlxG.mouse.overlaps(resume))
		{
			resume.color = FlxColor.YELLOW;

			if (FlxG.mouse.pressed)
			{
				close();
			}
		}
		else
		{
			resume.color = FlxColor.WHITE;
		}
	}
}
