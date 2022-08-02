package options;

import flixel.*;
import flixel.math.FlxMath;
import flixel.system.FlxSound;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class Volume extends FlxSubState
{
	var percentaje:Float = 100;
	var coolText:FlxText;
	var masterVolume:Float = 100;

	public function new()
	{
		super();

		var bg = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		bg.alpha = 0.7;
		add(bg);

		coolText = new FlxText(0, 0, '', 80);
		add(coolText);

		percentaje = FlxG.save.data.percentaje;
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		coolText.text = '%${percentaje}';
		coolText.screenCenter(X);
		coolText.screenCenter(Y);

		if (percentaje > 101)
		{
			percentaje = 100;
		}

		if (percentaje <= 0)
		{
			percentaje = 0;
		}

		if (FlxG.keys.justPressed.RIGHT)
		{
			percentaje += 10;
			masterVolume -= 0.010;

			FlxG.save.data.percentaje = percentaje;
		}

		if (FlxG.keys.justPressed.LEFT)
		{
			percentaje -= 10;
			masterVolume -= 0.010;
			FlxG.save.data.percentaje = percentaje;
		}

		if (FlxG.keys.justPressed.ESCAPE)
		{
			close();
		}
	}
}
