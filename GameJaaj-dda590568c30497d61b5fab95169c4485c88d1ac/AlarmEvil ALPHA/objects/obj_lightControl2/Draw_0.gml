
if (!surface_exists(surf))
{
surf = surface_create(room_width, room_height)
} else {
	surface_set_target(surf)
	draw_clear_alpha(c_black, 1)
	gpu_set_blendmode(bm_subtract)
	with(obj_lightTrue)
	{
	draw_sprite_ext(sprite_index, image_index, x,y, image_xscale * 1.5, image_yscale * 1.5, image_angle, c_grey, 1)
	}

	gpu_set_blendmode(bm_normal)
	surface_reset_target()
	draw_surface(surf, 0, 0)
}