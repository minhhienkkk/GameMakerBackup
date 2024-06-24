/// draw me on the surface before I die

if (surface_exists(global.damagemask)) {
    surface_set_target(global.damagemask)
    draw_set_colour(mycolour)
    draw_line_width(x,y,xstart,ystart,2)
    surface_reset_target();
}