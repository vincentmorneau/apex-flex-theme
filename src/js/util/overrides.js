// overwrites apex.theme.defaultStickyTop to help with the region display selector
apex.theme.defaultStickyTop = function() {
	return $('.ft-navbar').outerHeight();
};
