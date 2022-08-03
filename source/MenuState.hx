package;

import flixel.*;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.addons.display.FlxGridOverlay;
import flixel.addons.ui.FlxUIInputText;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import openfl.filters.ShaderFilter;

class MenuState extends FlxState
{
	var logo:FlxSprite;
	var bike:FlxSprite;
	var play:FlxSprite;
	var playSelected:FlxSprite;
	var settings:FlxSprite;
	var settingsSelected:FlxSprite;
	var bg:FlxSprite;
	var bgBrightness:FlxSprite;

	var handCursor:FlxSprite;

	override public function create()
	{
		super.create();

		handCursor = new FlxSprite(0).loadGraphic(Paths.image('handCursor'));
		handCursor.updateHitbox();
		handCursor.setPosition(FlxG.mouse.x, FlxG.mouse.y);
		handCursor.antialiasing = true;

		bg = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, 0xFF1D1D1D);
		add(bg);

		logo = new FlxSprite(-200, -40);
		logo.frames = Paths.getSparrowAtlas('logoBrons');
		logo.animation.addByPrefix('idle', 'logoBump0014', 24, false);
		logo.animation.addByPrefix('bump', 'logoBump', 24, false);
		logo.animation.play('idle');
		logo.antialiasing = true;
		add(logo);

		bike = new FlxSprite(630, 240);
		bike.frames = Paths.getSparrowAtlas('taxiChulo');
		bike.animation.addByPrefix('idle', 'motoMami', 24, false);
		bike.animation.play('idle');
		add(bike);

		play = new FlxSprite(10, 390).loadGraphic(Paths.image('playOptionsShit'));
		play.setGraphicSize(Std.int(play.width * 1));
		add(play);

		playSelected = new FlxSprite(10, 364).loadGraphic(Paths.image('playOptionsShitSelected'));
		playSelected.setGraphicSize(Std.int(playSelected.width * 1));
		playSelected.alpha = 0;
		add(playSelected);

		settings = new FlxSprite(10, 560).loadGraphic(Paths.image('settingsOptionsShit'));
		settings.setGraphicSize(Std.int(settings.width * 1));
		add(settings);

		settingsSelected = new FlxSprite(10, 497).loadGraphic(Paths.image('settingsOptionsShitSelected'));
		settingsSelected.setGraphicSize(Std.int(settingsSelected.width * 1));
		settingsSelected.alpha = 0;
		add(settingsSelected);

		var textName = new FlxText(bike.x + 150, 220, '', 45);

		if (FlxG.save.data.UglyName)
		{
			textName.text = FlxG.save.data.NickName;
		}
		add(textName);

		bgBrightness = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);

		if (FlxG.save.data.BrightNess)
		{
			bgBrightness.alpha = FlxG.save.data.BrightNessAlpha;
		}
		add(bgBrightness);

		bgBrightness.alpha = FlxG.save.data.BrightNessAlpha;
		textName.text = FlxG.save.data.NickName;
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		FlxG.mouse.load(handCursor.pixels, 0.1);
		FlxG.mouse.visible = true;

		if (FlxG.mouse.overlaps(logo) && FlxG.mouse.justPressed)
		{
			logo.animation.play('bump');
		}

		if (FlxG.mouse.overlaps(play))
		{
			play.alpha = 0;
			playSelected.alpha = 1;

			if (FlxG.mouse.pressed)
			{
				FlxG.switchState(new LevelSelector());
			}
		}
		else
		{
			play.alpha = 1;
			playSelected.alpha = 0;
		}

		if (FlxG.mouse.overlaps(settings))
		{
			settings.alpha = 0;
			settingsSelected.alpha = 1;

			if (FlxG.mouse.pressed)
			{
				FlxG.switchState(new Options());
			}
		}
		else
		{
			settings.alpha = 1;
			settingsSelected.alpha = 0;
		}
	}
}
