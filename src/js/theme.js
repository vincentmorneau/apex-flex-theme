/**
 * @namespace ft
 **/
var ft = ft || {};

/**
 * @module theme
 **/
ft.theme = {
	ready: function() {
		// Initialize Bootstrap components
		ft.bootstrap.init();

		// making the page visible again
		// !important is required to overwrite what APEX already does
		$("html").attr('style', 'visibility: visible!important');
	}
};
