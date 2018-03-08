/**
 * @namespace aft
 **/
var aft = aft || {};

/**
 * @module theme
 **/
aft.theme = {
	ready: function() {
		// Initialize Bootstrap components
		aft.bootstrap.init();

		// making the page visible again
		// !important is required to overwrite what APEX already does
		$("html").attr('style', 'visibility: visible!important');
	}
};
