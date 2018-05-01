module.exports = {
	headerHeight() {
		return $('.ft-navbar').outerHeight();
	},

	defaultStickyTop() {
		const navbarHeight = $('.ft-navbar').outerHeight();
		const breadcrumbHeight = $('.ft-breadcrumb').outerHeight();

		return navbarHeight + breadcrumbHeight;
	},

	getCurrentViewport() {
		const getBreakpoint = function (breakpoint) {
			return Number(ft.style.getPropertyValue(breakpoint).replace(/\D+/g, ''));
		};

		const bodyWidth = $('body').width();

		if (bodyWidth >= getBreakpoint('--breakpoint-lg')) {
			return 'lg';
		}

		if (bodyWidth >= getBreakpoint('--breakpoint-lg')) {
			return 'lg';
		}

		if (bodyWidth >= getBreakpoint('--breakpoint-md')) {
			return 'md';
		}

		if (bodyWidth >= getBreakpoint('--breakpoint-sm')) {
			return 'sm';
		}

		if (bodyWidth < getBreakpoint('--breakpoint-sm')) {
			return 'xs';
		}
	},

	menuHandlers() {
		const openLeft = function () {
			$('.ft-main-left').addClass('open');
			$('.ft-main-center').addClass('ft-main-left-open');
			$('.ft-main-left-toggle span').addClass('fam-arrow-left').removeClass('fam-arrow-right');
		};

		const closeLeft = function () {
			$('.ft-main-left').removeClass('open');
			$('.ft-main-center').removeClass('ft-main-left-open');
			$('.ft-main-left-toggle span').addClass('fam-arrow-right').removeClass('fam-arrow-left');
		};

		const openRight = function () {
			$('.ft-main-right').addClass('open');
			$('.ft-main-center').addClass('ft-main-right-open');
			$('.ft-main-right-toggle span').addClass('fam-arrow-right').removeClass('fam-arrow-left');
		};

		const closeRight = function () {
			$('.ft-main-right').removeClass('open');
			$('.ft-main-center').removeClass('ft-main-right-open');
			$('.ft-main-right-toggle span').addClass('fam-arrow-left').removeClass('fam-arrow-right');
		};

		const activateQuickMode = function () {
			$('.ft-main-left, .ft-main-center, .ft-main-right, .ft-breadcrumb').css({
				transition: 'none'
			});
		};

		const deactivateQuickMode = function () {
			setTimeout(() => {
				$('.ft-main-left, .ft-main-center, .ft-main-right, .ft-breadcrumb').css({
					transition: ''
				});
			}, 1000);
		};

		// Handles the left side menu toggle
		$('[data-toggle="ft-main-left"]').on('click', () => {
			if ($('.ft-main-left').hasClass('open')) {
				closeLeft();
			} else {
				openLeft();
			}
		});

		// Handles the right side menu toggle
		$('[data-toggle="ft-main-right"]').on('click', () => {
			if ($('.ft-main-right').hasClass('open')) {
				closeRight();
			} else {
				openRight();
			}
		});

		const autoClose = function () {
			switch (ft.theme.getCurrentViewport()) {
				case 'xs':
					closeLeft();
					closeRight();
					break;
				case 'sm':
					openLeft();
					closeRight();
					break;
				case 'md':
					openLeft();
					closeRight();
					break;
				case 'lg':
					openLeft();
					openRight();
					break;
				case 'xl':
					openLeft();
					openRight();
					break;
				default:
			}
		};

		apex.jQuery(window).on('apexwindowresized', () => {
			autoClose();
		});

		activateQuickMode();
		autoClose();
		deactivateQuickMode();
	},

	ready() {
		ft.apex.rds();
		ft.bootstrap.init();
		ft.theme.menuHandlers();
		ft.overrides.scrollOffset();

		// Making the page visible again
		// !important is required to overwrite what APEX already does
		$('html').attr('style', 'visibility: visible!important');
	}
};
