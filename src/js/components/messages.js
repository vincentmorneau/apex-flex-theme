module.exports = {
	init() {
		// Message is missing for theme roller
		apex.lang.addMessages({
			'PE.SELECT': '- Select -'
		});
	}
};

$(() => {
	ft.messages.init();
});
