/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 26E15E8F
/// @DnDArgument : "var" "started_fade"
if(started_fade == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 523E166E
	/// @DnDParent : 26E15E8F
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "started_fade"
	started_fade = 1;

	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3D6FFA4E
	/// @DnDParent : 26E15E8F
	/// @DnDArgument : "soundid" "snd_Title_Screen"
	/// @DnDSaveInfo : "soundid" "8e4f8ea7-b752-49ac-8150-9796ab563135"
	audio_stop_sound(snd_Title_Screen);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 706D6F0A
	/// @DnDParent : 26E15E8F
	/// @DnDArgument : "objectid" "obj_fade"
	/// @DnDSaveInfo : "objectid" "9e521a44-d854-4a66-bfdf-659e0bc6d87c"
	instance_create_layer(0, 0, "Instances", obj_fade);
}