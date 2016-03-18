void CSQC_UpdateView(float vwidth, float vheight, float notmenu) =
{

	// float player_ping = stof(getplayerkeyvalue(player_localnum, "ping"));
	// float player_pl = stof(getplayerkeyvalue(player_localnum, "pl"));

	screen_size = screen_center = '0 0 0';//prevent noref warning
	
	screen_size_x = vwidth;
	screen_size_y = vheight;
	screen_center_x = screen_size_x/2;
	screen_center_y = screen_size_y/2;

	// Will Retrieve the current client state every frame
	CLIENT_STATE = serverkey("constate");

	

	
	clearscene();
	
// Always setviewprops and addentities after clearscene...
	// Assign Standard Viewflags
	// Draw the World (and sky)
	setviewprop(VF_DRAWWORLD, 1);
	// Change Perspective 1: normal, 0: isometric
	setviewprop(VF_PERSPECTIVE, 1);
	// dont render engine crosshair
	setviewprop(VF_DRAWCROSSHAIR, 0);
	// Do not Draw the Engine Status Bar (the default Quake HUD)
	setviewprop(VF_DRAWENGINESBAR, 0);	

	view_angles = getproperty(VF_ANGLES);
	view_origin = getproperty(VF_ORIGIN);
	
	addentities(MASK_ENGINE | MASK_VIEWMODEL);
	
	renderscene();
	
};