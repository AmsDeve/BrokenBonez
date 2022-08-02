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
	var player:BykePlayer;

	var stageGrp:FlxTypedGroup<FlxSprite>;

	var grass:FlxSprite;
	var sky:FlxSprite;
	var mountains:FlxSprite;
	var sun:FlxSprite;

	override public function create()
	{
		super.create();

		stageGrp = new FlxTypedGroup<FlxSprite>();
		add(stageGrp);

		sky = new FlxSprite();
		sky.loadGraphic(Paths.image('sky'));
		sky.screenCenter();
		sky.scrollFactor.set(0.85, 0.85);
		stageGrp.add(sky);

		mountains = new FlxSprite(0, 15);
		mountains.loadGraphic(Paths.image('mountains'));
		mountains.scrollFactor.set(0.90, 0.90);
		mountains.screenCenter(X);
		stageGrp.add(mountains);

		sun = new FlxSprite(0, 0);
		sun.loadGraphic(Paths.image('sol'));
		stageGrp.add(sun);

		grass = new FlxSprite(0, 50);
		grass.loadGraphic(Paths.image('grass'));
		grass.screenCenter(X);
		grass.updateHitbox();
		grass.immovable = true;
		stageGrp.add(grass);

		player = new BykePlayer(0, 0);
		add(player);

		FlxG.camera.follow(player, TOPDOWN, 1);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		FlxG.collide(player, grass);
	}
}
