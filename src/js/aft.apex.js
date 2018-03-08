/**
 * @namespace aft
 **/
var aft = aft || {};

/**
 * @module apex
 **/
aft.apex = {
	init: function() {
		// Overrites default col-12 if another col-x is specified
		$(".col-1,.col-2,.col-3,.col-4,.col-5,.col-6,.col-7,.col-8,.col-9,.col-10,.col-11").removeClass("col-12");

		// Deletes empty html tags
		$('.nav-item-text, i:not([class]), i[class=""]').removeEmptyElements();
	},

	navbar: function() {
		// Calculates the height of the navbar and adjusts the main offset
		$('.ft-navbar-fixed-top .ft-main').css({
			"margin-top": $(".ft-navbar").outerHeight()
		});
	}
};

$(function() {
	aft.apex.init();
	aft.apex.navbar();
	aft.observe.navbar();
});
