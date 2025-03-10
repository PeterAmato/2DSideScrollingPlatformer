/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 74A4E3EA
/// @DnDArgument : "expr" "layer_tilemap_get_id("Tiles")"
/// @DnDArgument : "var" "Collision_tilemap"
Collision_tilemap = layer_tilemap_get_id("Tiles");

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2D0F6E53
/// @DnDComment : 1 value be pressing right$(13_10)-1 value be pressing left$(13_10)0 would be no input
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 7B2F0E3E
/// @DnDArgument : "msg" "move_x"
show_debug_message(string(move_x));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 34EDAC85
/// @DnDArgument : "expr" "move_x * walk_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x * walk_speed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 73A3E05B
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "Collision_tilemap"
var l73A3E05B_0 = instance_place(x + 0, y + 2, [Collision_tilemap]);
if ((l73A3E05B_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 67F7F48A
	/// @DnDComment : reset the falling speed on movement y$(13_10)when you landed on ground
	/// @DnDParent : 73A3E05B
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 13857A0A
	/// @DnDComment : Is there a wall
	/// @DnDParent : 73A3E05B
	/// @DnDArgument : "x" "x+(25 * sign(move_x))"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "Collision_tilemap"
	var l13857A0A_0 = instance_place(x+(25 * sign(move_x)), y + 0, [Collision_tilemap]);
	if ((l13857A0A_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 259D16C9
		/// @DnDComment : jump
		/// @DnDParent : 13857A0A
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 72BB46F3
	/// @DnDComment : Is there a gap
	/// @DnDParent : 73A3E05B
	/// @DnDArgument : "x" "x+(30 * sign(move_x_))"
	/// @DnDArgument : "y" "y + 50"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "Collision_tilemap"
	var l72BB46F3_0 = instance_place(x+(30 * sign(move_x_)), y + y + 50, [Collision_tilemap]);
	if ((l72BB46F3_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 15AB5D34
		/// @DnDComment : jump
		/// @DnDParent : 72BB46F3
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 024E7C62
	/// @DnDDisabled : 1
	/// @DnDParent : 73A3E05B
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 74B423EF
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3563D0A6
	/// @DnDParent : 74B423EF
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7C9625D6
		/// @DnDParent : 3563D0A6
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 036B0C58
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "Collision_tilemap"
move_and_collide(move_x, move_y, Collision_tilemap,4,0,0,walk_speed,jump_speed);