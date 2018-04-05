/**
 * @module observe
 **/
ft.observe = {
	navbar: function() {
		apex.jQuery(window).on('apexwindowresized', function() {
			ft.apex.navbar();
		});
	}
};
