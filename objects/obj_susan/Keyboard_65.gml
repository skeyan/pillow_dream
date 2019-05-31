/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1F079691
/// @DnDArgument : "speed" "-11 * spd_multiplier"
/// @DnDArgument : "type" "1"
hspeed = -11 * spd_multiplier;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 61CB7649
/// @DnDArgument : "xscale" "-0.4"
/// @DnDArgument : "yscale" "0.4"
image_xscale = -0.4;
image_yscale = 0.4;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7BE2A918
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "walking"
walking = 1;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5A7F9854
/// @DnDArgument : "code" "if (((image_index == 0) or (image_index == 2)))$(13_10){$(13_10)    audio_play_sound(snd_walk, 3, false);$(13_10)}"
if (((image_index == 0) or (image_index == 2)))
{
    audio_play_sound(snd_walk, 3, false);
}