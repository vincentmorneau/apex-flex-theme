// Overwrites apex.theme.defaultStickyTop to help with the region display selector
apex.theme.defaultStickyTop = function() {
	let navbarHeight = $('.ft-navbar').outerHeight();
	let breadcrumbHeight = $('.ft-breadcrumb').outerHeight();
	let extraHeight = 12;

	return navbarHeight + breadcrumbHeight + extraHeight;
};
