package;

import flixel.*;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	public static var player:BykePlayer;

	var stageGrp:FlxTypedGroup<FlxSprite>;

	public static var grass:FlxSprite;

	var sky:FlxSprite;
	var mountains:FlxSprite;
	var sun:FlxSprite;

	override public function create()
	{
		super.create();

		stageGrp = new FlxTypedGroup<FlxSprite>();
		add(stageGrp);

		sky = new FlxSprite(0, -700);
		sky.loadGraphic(Paths.image('sky'));
		sky.screenCenter();
		sky.scrollFactor.set(0.85, 0.85);
		stageGrp.add(sky);

		mountains = new FlxSprite(0, -30);
		mountains.loadGraphic(Paths.image('mountains'));
		mountains.scrollFactor.set(0.90, 0.90);
		mountains.screenCenter(X);
		stageGrp.add(mountains);

		sun = new FlxSprite(0, -100);
		sun.loadGraphic(Paths.image('sol'));
		stageGrp.add(sun);

		player = new BykePlayer(0, -400);
		add(player);

		grass = new FlxSprite(0, 50);
		grass.loadGraphic(Paths.image('grass'));
		grass.screenCenter(X);
		grass.updateHitbox();
		grass.immovable = true;
		stageGrp.add(grass);

		FlxG.camera.follow(player, TOPDOWN, 1);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		FlxG.collide(player, grass);

		if (FlxG.keys.justPressed.R)
		{
			FlxG.switchState(new PlayState());
		}
	}
}
