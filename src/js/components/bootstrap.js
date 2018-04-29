module.exports = {
	init() {
		/*
		* Carousel
	  */
		$('.ft-region-tabs').each(function () {
			const $tabContainer = $(this);
			// By default, show the first tab
			let tabToShow = $tabContainer.find('li.nav-item:first-child a.nav-link');

			// If there is a session value for the default tab, show it
			if ($tabContainer.hasClass('js-useLocalStorage')) {
				const sessionStorage = apex.storage.getScopedSessionStorage({
					usePageId: true,
					useAppId: true,
					regionId: $tabContainer.attr('id')
				});

				const activeTabID = sessionStorage.getItem('activeTabID');

				if (activeTabID) {
					tabToShow = $tabContainer.find('#' + activeTabID);
				}

				// Remember the current tab in session when switching tab
				$tabContainer.find('a.nav-link[data-toggle="tab"]').on('shown.bs.tab', function () {
					sessionStorage.setItem('activeTabID', $(this).attr('id'));
				});
			}

			// Activate the tab component and pass the tab to show
			tabToShow.tab('show');
		});

		/*
		* Carousel
	  */
		$('.carousel').each(function () {
			const $carousel = $(this);

			if ($carousel.hasClass('ft-carousel-controls')) {
				$carousel.append(`
					<a class="carousel-control-prev" href="#${$carousel.attr('id')}" role="button" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#${$carousel.attr('id')}" role="button" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				`);
			}

			if ($carousel.hasClass('ft-carousel-indicators')) {
				const indicators = $carousel.find('.carousel-item')
					.map(index => {
						return `<li data-target="#${$carousel.attr('id')}" data-slide-to="${index}"></li>`;
					}).get().join('');

				$carousel.prepend(`<ol class="carousel-indicators">${indicators}</ol>`);
			}

			$carousel.find('.carousel-item:first, .carousel-indicators li:first').addClass('active');
		});

		$('.carousel').carousel();
	}
};
