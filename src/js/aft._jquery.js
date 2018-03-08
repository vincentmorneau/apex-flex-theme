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
