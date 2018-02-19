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
 * @module messages
 **/
apexBootstrap.messages = {
	init: function() {
		// message is missing for theme roller
		apex.lang.addMessages({
			"PE.SELECT": "- Select -"
		});
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
		// $(".ft-region.collapse").attr({
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
		// $(".ft-field-tooltip [data-help][data-help!=''], .ft-button-tooltip[data-help][data-help!='']").each(function() {
		// 	$(this).attr({
		// 		"data-toggle": "tooltip",
		// 		"title": $(this).data("help")
		// 	});
		// });

		// Popovers
		// $(".ft-field-popover [data-help][data-help!='']").each(function() {
		// 	$(this).attr({
		// 		"data-toggle": "popover",
		// 		"data-content": $(this).data("help"),
		// 		"title": $(this).text()
		// 	});
		// });

		// $(".ft-button-popover[data-help][data-help!='']").each(function() {
		// 	$(this).attr({
		// 		"data-toggle": "popover",
		// 		"data-content": $(this).data("help")
		// 	});
		// });

		// Single Button Dropdowns
		// $(".ft-single-button-dropdown").each(function() {
		// 	$(this)
		// 		.removeAttr("onclick")
		// 		.addClass("dropdown-toggle")
		// 		.attr({
		// 			"data-toggle": "dropdown",
		// 			"aria-haspopup": "true",
		// 			"aria-expanded": "false",
		// 		})
		// 		.prependTo($(this).closest(".ft-region").find(".ft-btn-dropdown"));
		// });

		// Split Button Dropdowns
		// $(".ft-split-button-dropdown").each(function() {
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
		// 	$(this).prependTo($(this).closest(".ft-region").find(".ft-btn-dropdown").prepend(toggle));
		// });

		// Label
		// $(".input-field label").each(function() {
		// 	$(this).appendTo($(this).parent());
		// });

		// Input Groups
		// $(".form-group").not(":only-child").each(function() {
		// 	$(this)
		// 		.prevAll(".input-group-addon, .input-group-btn")
		// 		.prependTo($(this).find(".ft-input-group"));
		//
		// 	$(this)
		// 		.closest(".ft-region")
		// 		.find(".ft-btn-dropdown").children()
		// 		.prependTo($(this).find(".ft-input-group .input-group-btn"));
		//
		// 	$(this)
		// 		.nextAll(".input-group-addon, .input-group-btn")
		// 		.appendTo($(this).find(".ft-input-group"));
		//
		// 	$(this)
		// 		.closest(".ft-region")
		// 		.find(".ft-btn-dropdown").children()
		// 		.appendTo($(this).find(".ft-input-group .input-group-btn"));
		// });

		// $(".input-group-addon, .input-group-btn").closest(".ft-input-group").addClass("input-group");

		// Region Cards
		// $(".card.ft-card-img-top, .card.ft-card-img-overlay").each(function() {
		// 	$(this).prepend($(this).find("img"));
		// });
		//
		// $(".card.ft-card-img-bottom").each(function() {
		// 	$(this).append($(this).find("img"));
		// });
		//
		// // Report Cards
		// $(".ft-card-img-top .card, .ft-card-img-overlay .card").each(function() {
		// 	$(this).prepend($(this).find("img"));
		// });
		//
		// $(".ft-card-img-bottom .card").each(function() {
		// 	$(this).append($(this).find("img"));
		// });
	}
};

$(function() {
	apexBootstrap.theme.init();
	apexBootstrap.theme.bindings();
	apexBootstrap.messages.init();
});
