/**
 * Removes an object from the DOM that has empty text and zero child nodes
 * @returns {object}
 */
$.fn.removeIfEmptyNodes = function () {
	return this.filter(function () {
		return $.trim($(this).text()) === '' && $(this).children().length === 0;
	}).remove();
};

/**
 * Removes an object object from the DOM that has empty text
 * @returns {object}
 */
$.fn.removeIfEmptyText = function () {
	return this.filter(function () {
		return $.trim($(this).text()) === '';
	}).remove();
};
