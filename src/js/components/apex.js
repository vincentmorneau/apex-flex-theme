module.exports = {
	init() {
		// Overrites default col-12 if another col-x is specified
		$('.col-1,.col-2,.col-3,.col-4,.col-5,.col-6,.col-7,.col-8,.col-9,.col-10,.col-11').removeClass('col-12');

		// Deletes empty html tags
		$('.ft-remove-if-empty-nodes, .nav-item-text, i:not([class]), i[class=""]').removeIfEmptyNodes();

		// Deletes empty html text
		$('.ft-remove-empty-text').removeIfEmptyText();
	},

	navbar() {
		// Adjusts the main offset
		$('.ft-navbar-fixed-top .ft-main').css({
			'margin-top': apex.theme.defaultStickyTop()
		});

		$('.ft-navbar-fixed-top .ft-main-left, .ft-navbar-fixed-top .ft-main-right').css({
			top: apex.theme.defaultStickyTop()
		});

		$('.ft-main-left, .ft-main-right').css({
			height: 'calc(100vh - ' + apex.theme.defaultStickyTop() + 'px)'
		});
	},

	rds() {
		$('.apex-rds-container--jumpNav').closest('.apex-rds-container').addClass('apex-rds-vertical');
	}
};

$(() => {
	ft.apex.init();
	ft.apex.navbar();
});
