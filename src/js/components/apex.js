module.exports = {
	init() {
		// Overrites default col-12 if another col-x is specified
		$(".col-1,.col-2,.col-3,.col-4,.col-5,.col-6,.col-7,.col-8,.col-9,.col-10,.col-11").removeClass("col-12");

		// Deletes empty html tags
		$('.ft-remove-if-empty-nodes, .nav-item-text, i:not([class]), i[class=""]').removeIfEmptyNodes();

		// Deletes empty html text
		$('.ft-remove-empty-text').removeIfEmptyText();
	},

	navbar() {
		// Calculates the height of the navbar
		var navbarHeight = $(".ft-navbar").outerHeight();

		// Adjusts the main offset
		$('.ft-navbar-fixed-top .ft-main').css({
			"margin-top": navbarHeight
		});

		$('.ft-navbar-fixed-top .ft-main-left, .ft-navbar-fixed-top .ft-main-right').css({
			"top": navbarHeight
		});

		$('.ft-main-left, .ft-main-right').css({
			"height": "calc(100vh - " + navbarHeight + "px)"
		});
	}
};

$(function() {
	ft.apex.init();
	ft.apex.navbar();
	ft.observe.navbar();
});
