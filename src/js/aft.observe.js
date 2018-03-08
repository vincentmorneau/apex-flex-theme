/**
 * @module observe
 **/
aft.observe = {
	navbar: function() {
		apex.jQuery(window).on('apexwindowresized', function() {
			aft.apex.navbar();
		});
	}
};
