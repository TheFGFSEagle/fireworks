var namespace = "fireworks";

var main = func(addon) {
	logprint(LOG_INFO, "Fireworks addon initialized from ", addon.basePath);
	
	globals[namespace] = {
	};
	
	io.load_nasal(addon.basePath ~ "/Nasal/fireworks.nas", namespace);
}

var unload = func(addon) {
	logprint(LOG_DEBUG, "Unloading fireworks addon");
	
	delete(globals, namespace);
}

