package;

import flixel.*;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;

class LevelSelector extends FlxState
{
	var level1:FlxText;
	var level2:FlxText;
	var level3:FlxText;

	var handCursor:FlxSprite;

	override function create()
	{
		super.create();

		handCursor = new FlxSprite(0).loadGraphic(Paths.image('handCursor'));
		handCursor.updateHitbox();
		handCursor.setPosition(FlxG.mouse.x, FlxG.mouse.y);
		handCursor.antialiasing = true;

		level1 = new FlxText(60, 100, 'level 1', 54);
		add(level1);

		level2 = new FlxText(60, 200, 'level 2', 54);
		add(level2);

		level3 = new FlxText(60, 300, 'level 3', 54);
		add(level3);
	}

	override function update(tilin:Float)
	{
		super.update(tilin);

		FlxG.mouse.load(handCursor.pixels, 0.1);
		FlxG.mouse.visible = true;

		if (FlxG.mouse.overlaps(level1))
		{
			level1.color = FlxColor.YELLOW;

			if (FlxG.mouse.pressed)
			{
				FlxG.switchState(new PlayState());
			}
		}
		else
		{
			level1.color = FlxColor.WHITE;
		}

		if (FlxG.mouse.overlaps(level2))
		{
			level2.color = FlxColor.YELLOW;

			if (FlxG.mouse.pressed)
			{
				throw "no hay mas niveles papu :'v";
			}
		}
		else
		{
			level2.color = FlxColor.WHITE;
		}

		if (FlxG.mouse.overlaps(level3))
		{
			level3.color = FlxColor.YELLOW;

			if (FlxG.mouse.pressed)
			{
				throw "no hay mas niveles papu :'v";
			}
		}
		else
		{
			level3.color = FlxColor.WHITE;
		}

		if (FlxG.keys.justPressed.ESCAPE)
		{
			FlxG.switchState(new MenuState());
		}
	}
}
