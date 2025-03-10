/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 046FF5EB
/// @DnDComment : are we jumping?
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 46083241
	/// @DnDParent : 046FF5EB
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "SPR_Enemy_jump"
	/// @DnDSaveInfo : "spriteind" "SPR_Enemy_jump"
	sprite_index = SPR_Enemy_jump;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 233F959B
/// @DnDComment : are we jumping?
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "2"
if(move_y > 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6DF4BDDC
	/// @DnDParent : 233F959B
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "SPR_Enemy_Idle"
	/// @DnDSaveInfo : "spriteind" "SPR_Enemy_Idle"
	sprite_index = SPR_Enemy_Idle;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 01D949EA
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "OBJ_Floor"
/// @DnDSaveInfo : "object" "OBJ_Floor"
var l01D949EA_0 = instance_place(x + 0, y + 2, [OBJ_Floor]);
if ((l01D949EA_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1632E15F
	/// @DnDComment : going left
	/// @DnDParent : 01D949EA
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 07846A35
		/// @DnDParent : 1632E15F
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "SPR_Player_walk"
		/// @DnDSaveInfo : "spriteind" "SPR_Player_walk"
		sprite_index = SPR_Player_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 320727C9
		/// @DnDParent : 1632E15F
		/// @DnDArgument : "xscale" "-1 * abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = -1 * abs(image_xscale);
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A3D09D6
	/// @DnDComment : going right
	/// @DnDParent : 01D949EA
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2DE1586D
		/// @DnDParent : 0A3D09D6
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "SPR_Enemy_walk_"
		/// @DnDSaveInfo : "spriteind" "SPR_Enemy_walk_"
		sprite_index = SPR_Enemy_walk_;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 127D5535
		/// @DnDParent : 0A3D09D6
		/// @DnDArgument : "xscale" "1 * abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = 1 * abs(image_xscale);
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2AA3CB40
	/// @DnDComment : stop$(13_10)
	/// @DnDParent : 01D949EA
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 4FB964DB
		/// @DnDParent : 2AA3CB40
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "SPR_Enemy_Idle"
		/// @DnDSaveInfo : "spriteind" "SPR_Enemy_Idle"
		sprite_index = SPR_Enemy_Idle;
		image_index += 0;
	}
}