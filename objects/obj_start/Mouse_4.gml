/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 672B815C
/// @DnDArgument : "var" "started_fade"
if(started_fade == 0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 5A328732
	/// @DnDParent : 672B815C
	/// @DnDArgument : "room" "Instructions_1"
	/// @DnDSaveInfo : "room" "2566ed1f-afbc-44a4-89a4-93082aae5fbc"
	room_goto(Instructions_1);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62EF96A3
	/// @DnDParent : 672B815C
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "started_fade"
	started_fade = 1;
}