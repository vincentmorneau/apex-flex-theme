/**
 * @module bootstrap
 **/
aft.bootstrap = {
	init: function() {
		// Tabs
		$('.ft-region-tabs').each(function() {
			var $tabContainer = $(this);
			// By default, show the first tab
			var tabToShow = $tabContainer.find('li.nav-item:first-child a.nav-link');

			// If there is a session value for the default tab, show it
			if ($tabContainer.hasClass("js-useLocalStorage")) {
				var sessionStorage = apex.storage.getScopedSessionStorage({
					usePageId: true,
					useAppId: true,
					regionId: $tabContainer.attr('id')
				});

				var activeTabID = sessionStorage.getItem("activeTabID");

				if (activeTabID) {
					tabToShow = $tabContainer.find('#' + activeTabID);
				}

				// Remember the current tab in session when switching tab
				$tabContainer.find('a.nav-link[data-toggle="tab"]').on('shown.bs.tab', function(e) {
					sessionStorage.setItem("activeTabID", $(this).attr('id'));
				});
			}

			// Activate the tab component and pass the tab to show
			tabToShow.tab('show');
		});
	}
};
