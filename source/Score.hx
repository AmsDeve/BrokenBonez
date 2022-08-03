import flixel.FlxG;

class Score
{
	public static var levelScore:Map<String, Int> = new Map<String, Int>();

	public static function getLevelScore(level:Int):Int
	{
		if (!levelScore.exists(formatLevel('level' + level)))
			setScore(formatLevel('level' + level), 0);

		return levelScore.get(formatLevel('level' + level));
	}

	static function setScore(level:String, score:Int):Void
	{
		levelScore.set(level, score);
		FlxG.save.data.levelScore = levelScore;
		FlxG.save.flush();
	}

	public static function formatLevel(level:String):String
	{
		var daLevel:String = level;
		return daLevel;
	}
}
