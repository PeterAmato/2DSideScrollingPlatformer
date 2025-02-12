/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6115A0F0
/// @DnDArgument : "obj" "OBJ_Player"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "OBJ_Player"
var l6115A0F0_0 = false;
l6115A0F0_0 = instance_exists(OBJ_Player);
if(!l6115A0F0_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 7AEED352
	/// @DnDParent : 6115A0F0
	exit;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 79DA334C
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 2D081A3D
/// @DnDArgument : "font" "FontOpenSans"
/// @DnDSaveInfo : "font" "FontOpenSans"
draw_set_font(FontOpenSans);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3F40C0EB
/// @DnDArgument : "x" "50"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Coins: ""
/// @DnDArgument : "var" "OBJ_Player.coins"
draw_text(x + 50, y + 10, string("Coins: ") + string(OBJ_Player.coins));