import flixel.*;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class Pause extends FlxSubState
{
	var menu:FlxText;
	var resume:FlxText;

	public function new(x:Float, y:Float)
	{
		super();

		var bg = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		bg.alpha = 0.7;
		add(bg);

		var coolText = new FlxText(0, 120, 'Game Paused!', 80);
		coolText.screenCenter(X);
		add(coolText);

		menu = new FlxText(0, 320, 'MainMenu', 80);
		menu.screenCenter(X);
		add(menu);

		resume = new FlxText(0, 350, 'Resume', 80);
		resume.screenCenter(X);
		add(resume);

		cameras = [FlxG.cameras.list[FlxG.cameras.list.length - 1]];
	}

	override function update(elapsed:Float)
	{
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

		if (FlxG.keys.justPressed.ENTER)
		{
			close();
		}

		if (FlxG.keys.justPressed.ESCAPE)
		{
			FlxG.switchState(new MenuState());
		}
	}
}
