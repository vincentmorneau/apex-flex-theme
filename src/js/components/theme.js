module.exports = {
	ready() {
		// Initialize Bootstrap components
		ft.bootstrap.init();

		// Making the page visible again
		// !important is required to overwrite what APEX already does
		$('html').attr('style', 'visibility: visible!important');

		$('[data-toggle="ft-main-left"]').on('click', () => {
			if ($('.ft-main-left').hasClass('open')) {
				$('.ft-main-left').removeClass('open');
				$('.ft-main-center').removeClass('ft-main-left-open');
			} else {
				$('.ft-main-left').addClass('open');
				$('.ft-main-center').addClass('ft-main-left-open');
			}
		});

		$('[data-toggle="ft-main-right"]').on('click', () => {
			if ($('.ft-main-right').hasClass('open')) {
				$('.ft-main-right').removeClass('open');
				$('.ft-main-center').removeClass('ft-main-right-open');
			} else {
				$('.ft-main-right').addClass('open');
				$('.ft-main-center').addClass('ft-main-right-open');
			}
		});
	}
};
