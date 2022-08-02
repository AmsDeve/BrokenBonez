package;

import flixel.*;

class WaithState extends FlxState
{
	public static var MIN_TIME = 2;

	var state:FlxState;

	function new(state:FlxState)
	{
		super();
		this.state = state;
	}

	override function create()
	{
		var load = new FlxSprite();
		load.frames = Paths.getSparrowAtlas('LoadingSlider');
		load.animation.addByPrefix('load', 'LoadingShit', 24, true);
		load.animation.play('load');
		add(load);
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);
	}

	inline static public function loadAndSwitchState(state:FlxState)
	{
		FlxG.switchState(state);
	}
}
