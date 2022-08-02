package options;

import flixel.*;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class Gama extends FlxSubState
{
	var percentaje:Float = 0;
	var bgBrightness:FlxSprite;
	var coolText:FlxText;

	public function new()
	{
		super();

		var bg = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		bg.alpha = 0.7;
		add(bg);

		coolText = new FlxText(0, 0, '', 80);
		add(coolText);

		bgBrightness = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);

		if (FlxG.save.data.BrightNess)
		{
			bgBrightness.alpha = FlxG.save.data.BrightNessAlpha;
		}
		add(bgBrightness);

		bgBrightness.alpha = FlxG.save.data.BrightNessAlpha;
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
			bgBrightness.alpha -= 0.1;

			FlxG.save.data.BrightNessAlpha = bgBrightness.alpha;

			FlxG.save.data.percentaje = percentaje;
		}

		if (FlxG.keys.justPressed.LEFT)
		{
			percentaje -= 10;
			bgBrightness.alpha += 0.1;

			FlxG.save.data.BrightNessAlpha = bgBrightness.alpha;

			FlxG.save.data.percentaje = percentaje;
		}

		if (FlxG.keys.justPressed.ESCAPE)
		{
			close();
		}
	}
}
