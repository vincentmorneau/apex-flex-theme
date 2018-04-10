module.exports = {
	init() {
		// message is missing for theme roller
		apex.lang.addMessages({
			"PE.SELECT": "- Select -"
		});
	}
};

$(function() {
	ft.messages.init();
});
