/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7E52D461
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "House_Rooms"
if(room == House_Rooms)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 49657B75
	/// @DnDParent : 7E52D461
	/// @DnDArgument : "soundid" "snd_House_Rooms"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "bd9c0dae-cf06-415b-b5d1-a206ffbbcc0d"
	audio_play_sound(snd_House_Rooms, 0, 1);
}