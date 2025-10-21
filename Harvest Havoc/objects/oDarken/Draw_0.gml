draw_set_alpha(0.03); // Adjust for desired darkness (0 = transparent, 1 = opaque)
draw_set_color(c_gray);
draw_rectangle(0, 0, room_width, room_height, false); // Draws a filled rectangle over the entire room
draw_set_alpha(1); // Reset alpha to avoid affecting other drawing
draw_set_color(c_white); // Reset color