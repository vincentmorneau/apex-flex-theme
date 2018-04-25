// Overwrites apex.theme.defaultStickyTop to help with the region display selector
apex.theme.defaultStickyTop = function () {
	const navbarHeight = $('.ft-navbar').outerHeight();
	const breadcrumbHeight = $('.ft-breadcrumb').outerHeight();
	const extraHeight = 12;

	return navbarHeight + breadcrumbHeight + extraHeight;
};

module.exports = {
	scrollOffset() {
		// Fixes the RDS offset
		if ($.apex.aTabs) {
			$.apex.aTabs.prototype._getScrollOffset = function () {
				// For some reason the default offset in UT breaks our RDS
				// so here we are adjusting it. Original lookMargin was 60
				const lookMargin = -80;
				return this.tabs$.offset().top + this.tabs$.outerHeight() + lookMargin;
			};
		}
	}
};
