/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 216881AA
/// @DnDArgument : "speed" "11 * spd_multiplier"
/// @DnDArgument : "type" "1"
hspeed = 11 * spd_multiplier;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 190CC6B6
/// @DnDArgument : "xscale" ".4"
/// @DnDArgument : "yscale" ".4"
image_xscale = .4;
image_yscale = .4;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 48CEBD6A
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "walking"
walking = 1;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 36A75074
/// @DnDArgument : "code" "if (((image_index == 0) or (image_index == 2)))$(13_10){$(13_10)    audio_play_sound(snd_walk, 3, false);$(13_10)}"
if (((image_index == 0) or (image_index == 2)))
{
    audio_play_sound(snd_walk, 3, false);
}