package;

import flixel.*;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.addons.display.FlxGridOverlay;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;

class Options extends FlxState
{
	var bg:FlxSprite;

	var paper:FlxSprite;
	var volume:FlxSprite;
	var gama:FlxSprite;
	var user:FlxSprite;

	var tools:FlxSprite;
	var handCursor:FlxSprite;

	var bgBrightness:FlxSprite;

	override public function create()
	{
		super.create();

		handCursor = new FlxSprite(0).loadGraphic(Paths.image('handCursor'));
		handCursor.updateHitbox();
		handCursor.setPosition(FlxG.mouse.x, FlxG.mouse.y);
		handCursor.antialiasing = true;

		bg = new FlxSprite(0).loadGraphic(Paths.image('table'));
		bg.setGraphicSize(Std.int(bg.width * 1));
		bg.screenCenter(X);
		bg.screenCenter(Y);
		add(bg);

		paper = new FlxSprite(5, 0);
		paper.frames = Paths.getSparrowAtlas('hojaya_OHAYO');
		paper.animation.addByPrefix('idle', 'hoja', 24, true);
		paper.animation.play('idle');
		paper.screenCenter(Y);
		add(paper);

		volume = new FlxSprite(30, 150).loadGraphic(Paths.image('OptionsShitVolume'));
		volume.setGraphicSize(Std.int(volume.width * 1));
		add(volume);

		gama = new FlxSprite(90, 300).loadGraphic(Paths.image('OptionsShitGama'));
		gama.setGraphicSize(Std.int(gama.width * 1));
		add(gama);

		user = new FlxSprite(140, 500).loadGraphic(Paths.image('OptionsShitUser'));
		user.setGraphicSize(Std.int(user.width * 1));
		add(user);

		tools = new FlxSprite(500, -80);
		tools.frames = Paths.getSparrowAtlas('tableObjects');
		tools.animation.addByPrefix('idle', 'objects', 24, true);
		tools.animation.play('idle');
		add(tools);

		bgBrightness = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);

		if (FlxG.save.data.BrightNess)
		{
			bgBrightness.alpha = FlxG.save.data.BrightNessAlpha;
		}
		add(bgBrightness);
		bgBrightness.alpha = FlxG.save.data.BrightNessAlpha;
	}

	override public function update(elapsed:Float)
	{
		FlxG.mouse.load(handCursor.pixels, 0.1);

		if (FlxG.keys.justPressed.ESCAPE)
		{
			FlxG.switchState(new MenuState());
		}

		if (FlxG.mouse.overlaps(volume))
		{
			volume.color = FlxColor.YELLOW;

			if (FlxG.mouse.pressed)
			{
				openSubState(new options.Volume());
			}
		}
		else
		{
			volume.color = FlxColor.WHITE;
		}

		if (FlxG.mouse.overlaps(gama))
		{
			gama.color = FlxColor.YELLOW;

			if (FlxG.mouse.pressed)
			{
				openSubState(new options.Gama());
				persistentUpdate = false;
			}
		}
		else
		{
			gama.color = FlxColor.WHITE;
		}

		if (FlxG.mouse.overlaps(user))
		{
			user.color = FlxColor.YELLOW;

			if (FlxG.mouse.pressed)
			{
				openSubState(new options.UserName());
			}
		}
		else
		{
			user.color = FlxColor.WHITE;
		}
	}
}
