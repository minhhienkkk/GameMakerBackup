surface_set_target(global.damagemask)

tileLayerID = layer_get_id("dirt")
tileLayer = layer_tilemap_get_id(tileLayerID)

draw_tilemap(tileLayer,0,0)

 

surface_reset_target()

layer_set_visible(tileLayerID,0) 
