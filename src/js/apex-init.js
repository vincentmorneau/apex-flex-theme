/**
 * Removes empty objects from the DOM based on the given selector
 * @returns {object}
 */
$.fn.removeEmpty = function() {
	return this.filter(function() {
		return $.trim($(this).text()) === "" && $(this).children().length === 0;
	}).remove();
};

/**
 * Removes empty objects from the DOM based on the given selector
 * @returns {object}
 */
$.fn.removeEmptySpaces = function() {
	return this.filter(function() {
		return $.trim($(this).text()) === "";
	}).remove();
};

/**
 * @namespace apexBootstrap
 **/
var apexBootstrap = apexBootstrap || {};

/**
 * @module debug
 **/
apexBootstrap.debug = {
	time: function(name) {
		if (apex.debug.getLevel() > apex.debug.LOG_LEVEL.OFF) {
			console.time(name);
		}
	},

	timeEnd: function(name) {
		if (apex.debug.getLevel() > apex.debug.LOG_LEVEL.OFF) {
			console.timeEnd(name);
		}
	}
};

/**
 * @module theme
 **/
apexBootstrap.theme = {
	bindings: function() {
		var ViewModel = function() {
			// This substitution string is driven from page template
			// and then used in list templates
			this.homeLink = ko.observable();
			this.appName = ko.observable();
		};

		var viewModel = new ViewModel();
		ko.applyBindings(viewModel);
	},

	init: function() {
		// Deletes empty html tags
		$('.nav-item-text, i:not([class]), i[class=""]').removeEmpty();

		// Carousel
		// $(".carousel").each(function() {
		// 	var carousel = $(this);
		//
		// 	carousel.find(".carousel-item").each(function(index) {
		// 		var attributes = (index === 0) ? "class=\"active\"" : "";
		// 		carousel.find(".carousel-indicators").append("<li " + attributes + " data-target=\"#" + $(carousel).attr("id") + "\" data-slide-to=\"" + index + "\"></li>");
		// 	});
		// });

		// Collapsible
		// $(".ab-region.collapse").attr({
		// 	"role": "tablist",
		// 	"aria-multiselectable": "true"
		// });

		// $("button[target]").each(function() {
		// 	if ($("#" + $(this).attr("target")).length > 0) {
		// 		$(this).attr({
		// 			"data-toggle": "collapse",
		// 			"data-target": "#" + $(this).attr("target"),
		// 			"aria-expanded": "false",
		// 			"aria-controls": $(this).attr("target")
		// 		});
		// 	}
		// });

		// Tooltips
		// $(".ab-field-tooltip [data-help][data-help!=''], .ab-button-tooltip[data-help][data-help!='']").each(function() {
		// 	$(this).attr({
		// 		"data-toggle": "tooltip",
		// 		"title": $(this).data("help")
		// 	});
		// });

		// Popovers
		// $(".ab-field-popover [data-help][data-help!='']").each(function() {
		// 	$(this).attr({
		// 		"data-toggle": "popover",
		// 		"data-content": $(this).data("help"),
		// 		"title": $(this).text()
		// 	});
		// });

		// $(".ab-button-popover[data-help][data-help!='']").each(function() {
		// 	$(this).attr({
		// 		"data-toggle": "popover",
		// 		"data-content": $(this).data("help")
		// 	});
		// });

		// Single Button Dropdowns
		// $(".ab-single-button-dropdown").each(function() {
		// 	$(this)
		// 		.removeAttr("onclick")
		// 		.addClass("dropdown-toggle")
		// 		.attr({
		// 			"data-toggle": "dropdown",
		// 			"aria-haspopup": "true",
		// 			"aria-expanded": "false",
		// 		})
		// 		.prependTo($(this).closest(".ab-region").find(".ab-btn-dropdown"));
		// });

		// Split Button Dropdowns
		// $(".ab-split-button-dropdown").each(function() {
		// 	var classes = ["btn-primary", "btn-secondary", "btn-success", "btn-info", "btn-warning", "btn-danger", "btn-primary-outline", "btn-secondary-outline", "btn-success-outline", "btn-info-outline", "btn-warning-outline", "btn-danger-outline"];
		//
		// 	var elementClasses = $(this).attr("class").split(" ");
		//
		// 	for (var i = 0; i < elementClasses.length; i++) {
		// 		if ($.inArray(elementClasses[i], classes) >= 0) {
		// 			$thisClass = elementClasses[i];
		// 			break;
		// 		}
		// 	}
		//
		// 	var toggle = '<button type="button" class="btn ' + $thisClass + ' dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="sr-only">Toggle Dropdown</span></button>';
		//
		// 	$(this).prependTo($(this).closest(".ab-region").find(".ab-btn-dropdown").prepend(toggle));
		// });

		// Label
		// $(".input-field label").each(function() {
		// 	$(this).appendTo($(this).parent());
		// });

		// Input Groups
		// $(".form-group").not(":only-child").each(function() {
		// 	$(this)
		// 		.prevAll(".input-group-addon, .input-group-btn")
		// 		.prependTo($(this).find(".ab-input-group"));
		//
		// 	$(this)
		// 		.closest(".ab-region")
		// 		.find(".ab-btn-dropdown").children()
		// 		.prependTo($(this).find(".ab-input-group .input-group-btn"));
		//
		// 	$(this)
		// 		.nextAll(".input-group-addon, .input-group-btn")
		// 		.appendTo($(this).find(".ab-input-group"));
		//
		// 	$(this)
		// 		.closest(".ab-region")
		// 		.find(".ab-btn-dropdown").children()
		// 		.appendTo($(this).find(".ab-input-group .input-group-btn"));
		// });

		// $(".input-group-addon, .input-group-btn").closest(".ab-input-group").addClass("input-group");

		// Region Cards
		// $(".card.ab-card-img-top, .card.ab-card-img-overlay").each(function() {
		// 	$(this).prepend($(this).find("img"));
		// });
		//
		// $(".card.ab-card-img-bottom").each(function() {
		// 	$(this).append($(this).find("img"));
		// });
		//
		// // Report Cards
		// $(".ab-card-img-top .card, .ab-card-img-overlay .card").each(function() {
		// 	$(this).prepend($(this).find("img"));
		// });
		//
		// $(".ab-card-img-bottom .card").each(function() {
		// 	$(this).append($(this).find("img"));
		// });
	}
};

$(function() {
	apexBootstrap.theme.init();
	apexBootstrap.theme.bindings();
});
