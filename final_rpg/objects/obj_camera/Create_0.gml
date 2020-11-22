target = obj_player

cam = view_get_camera(view_current)

lerp_spd = .1

cam_width = camera_get_view_width(cam)
cam_height = camera_get_view_height(cam)

x = target.x
y = target.y

cam_x = x
cam_y = y