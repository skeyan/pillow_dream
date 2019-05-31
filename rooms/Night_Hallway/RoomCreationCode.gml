/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 65F870F2
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "Night_Hallway"
if(room == Night_Hallway)
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 38F295BC
	/// @DnDParent : 65F870F2
	/// @DnDArgument : "soundid" "snd_House_Rooms"
	/// @DnDSaveInfo : "soundid" "bd9c0dae-cf06-415b-b5d1-a206ffbbcc0d"
	audio_stop_sound(snd_House_Rooms);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 24CB4673
	/// @DnDParent : 65F870F2
	/// @DnDArgument : "soundid" "snd_Night_Hallway"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "4f2a4ee2-5fc9-4ee3-8221-e6dfcee36467"
	audio_play_sound(snd_Night_Hallway, 0, 1);
}