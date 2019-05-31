/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5125935D
/// @DnDArgument : "var" "jp"
if(jp == 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 30C6DA1C
	/// @DnDParent : 5125935D
	/// @DnDArgument : "speed" "-10"
	/// @DnDArgument : "type" "2"
	vspeed = -10;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 76285A47
	/// @DnDParent : 5125935D
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "jp"
	jp = 1;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 4CC436C4
	/// @DnDParent : 5125935D
	/// @DnDArgument : "soundid" "snd_Jump"
	/// @DnDSaveInfo : "soundid" "2b27bbad-6b4f-4a0e-a54d-a7ca135bfb72"
	audio_play_sound(snd_Jump, 0, 0);
}