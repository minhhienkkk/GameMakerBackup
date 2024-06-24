    /// @description flash effect like parent

draw_self()
if (parent.flash>0)
{
    shader_set(sWhite)
    draw_self()
    shader_reset()
}