package options;

import flixel.*;
import flixel.FlxSubState;
import flixel.addons.ui.FlxUIInputText;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class UserName extends FlxSubState
{
	public static var name:FlxUIInputText;

	var facebook:FlxSprite;
	var google:FlxSprite;

	public function new()
	{
		super();

		var bg = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		bg.alpha = 0.7;
		add(bg);

		var coolText = new FlxText(0, 100, 'Choose your name\n&\nPress Enter to set', 40);
		coolText.screenCenter(X);
		add(coolText);

		name = new FlxUIInputText(0, 250, 500, '', 50);
		name.screenCenter(X);

		if (FlxG.save.data.UglyName)
		{
			name.text = FlxG.save.data.NickName;
		}
		name.maxLength = 15;
		add(name);

		var loginWith = new FlxSprite(0, 380).loadGraphic(Paths.image('LoginWith'));
		loginWith.setGraphicSize(Std.int(loginWith.width * 1));
		loginWith.screenCenter(X);
		add(loginWith);

		google = new FlxSprite(320, 293);
		google.frames = Paths.getSparrowAtlas('proShit');
		google.animation.addByPrefix('idle', 'googl instancia 1', 24);
		google.animation.addByPrefix('selected', 'goggle select instancia 1', 24);
		google.animation.play('idle');
		google.updateHitbox();
		google.scale.set(0.2, 0.2);
		add(google);

		facebook = new FlxSprite(450, 300);
		facebook.frames = Paths.getSparrowAtlas('proShit');
		facebook.animation.addByPrefix('idle', 'face instancia 1', 24);
		facebook.animation.addByPrefix('selected', 'faceboock selec instancia 1', 24);
		facebook.animation.play('idle');
		facebook.updateHitbox();
		facebook.scale.set(0.2, 0.2);
		add(facebook);

		name.text = FlxG.save.data.NickName;
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.keys.justPressed.ENTER)
		{
			FlxG.save.data.NickName = name.text;
		}

		if (FlxG.keys.justPressed.ESCAPE)
		{
			close();
		}
	}
}
