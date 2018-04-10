module.exports = {
	ready() {
		// Initialize Bootstrap components
		ft.bootstrap.init();

		// making the page visible again
		// !important is required to overwrite what APEX already does
		$("html").attr('style', 'visibility: visible!important');

		$('[data-toggle="ft-main-left"]').on('click', function() {
			$('.ft-main-left').toggleClass('open');
		});

		$('[data-toggle="ft-main-right"]').on('click', function() {
			$('.ft-main-right').toggleClass('open');
		});
	}
};
