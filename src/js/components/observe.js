module.exports = {
	navbar() {
		apex.jQuery(window).on('apexwindowresized', function() {
			ft.apex.navbar();
		});
	}
};
