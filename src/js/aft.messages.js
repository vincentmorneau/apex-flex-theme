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

$(function() {
	aft.messages.init();
});
