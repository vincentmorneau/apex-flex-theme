/**
 * Removes empty objects from the DOM based on the given selector
 * @returns {object}
 */
$.fn.removeEmptyElements = function() {
	return this.filter(function() {
		return $.trim($(this).text()) === "" && $(this).children().length === 0;
	}).remove();
};

/**
 * Removes empty objects from the DOM based on the given selector
 * @returns {object}
 */
$.fn.removeBlankElements = function() {
	return this.filter(function() {
		return $.trim($(this).text()) === "";
	}).remove();
};

/**
 * @namespace aft
 **/
var aft = aft || {};

/**
 * @module messages
 **/
aft.messages = {
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
aft.theme = {
	init: function() {
		// Deletes empty html tags
		$('.nav-item-text, i:not([class]), i[class=""]').removeEmptyElements();
	}
};

$(function() {
	aft.theme.init();
	aft.messages.init();
});
