#macro RESO_FACTOR 4
#macro RESO_WIDTH 1920 / RESO_FACTOR
#macro RESO_HEIGHT 1080 / RESO_FACTOR

#macro DISP_W display_get_width()
#macro DISP_H display_get_height()
#macro WIN_W window_get_width()
#macro WIN_H window_get_height()

#macro CAM view_camera[0]
#macro VIEW_X camera_get_view_x(CAM)
#macro VIEW_Y camera_get_view_y(CAM)
#macro VIEW_W camera_get_view_width(CAM)
#macro VIEW_H camera_get_view_height(CAM)
#macro VIEW_CENTER_X (VIEW_W)
#macro VIEW_CENTER_Y (VIEW_H)

#macro GUI_W display_get_gui_width()
#macro GUI_H display_get_gui_height()

