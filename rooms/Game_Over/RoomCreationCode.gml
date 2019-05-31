/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5002A934
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "Game_Over"
if(room == Game_Over)
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 4AA0E2ED
	/// @DnDParent : 5002A934
	/// @DnDArgument : "soundid" "snd_Night_Hallway"
	/// @DnDSaveInfo : "soundid" "4f2a4ee2-5fc9-4ee3-8221-e6dfcee36467"
	audio_stop_sound(snd_Night_Hallway);
}