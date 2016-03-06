// Get unique id
var guid = function() {
    function s4() {
        return Math.floor((1 + Math.random()) * 0x10000)
            .toString(16)
            .substring(1);
    }
    return function() {
        return s4() + s4() + '-' + s4() + '-' + s4() + '-' +
            s4() + '-' + s4() + s4() + s4();
    };
};

// Pushpin plugin
(function($) {
    $(document).ready(function() {
        $.fn.pushpin = function(options) {
            var defaults = {
                top: 0,
                bottom: Infinity,
                offset: 0
            };
            options = $.extend(defaults, options);

            $index = 0;
            return this.each(function() {
                var $uniqueId = guid(),
                    $this = $(this),
                    $original_offset = $(this).offset().top;

                function removePinClasses(object) {
                    object.removeClass('pin-top');
                    object.removeClass('pinned');
                    object.removeClass('pin-bottom');
                }

                function updateElements(objects, scrolled) {
                    objects.each(function() {
                        // Add position fixed (because its between top and bottom)
                        if (options.top <= scrolled && options.bottom >= scrolled && !$(this).hasClass('pinned')) {
                            removePinClasses($(this));
                            $(this).css('top', options.offset);
                            $(this).addClass('pinned');
                        }

                        // Add pin-top (when scrolled position is above top)
                        if (scrolled < options.top && !$(this).hasClass('pin-top')) {
                            removePinClasses($(this));
                            $(this).css('top', 0);
                            $(this).addClass('pin-top');
                        }

                        // Add pin-bottom (when scrolled position is below bottom)
                        if (scrolled > options.bottom && !$(this).hasClass('pin-bottom')) {
                            removePinClasses($(this));
                            $(this).addClass('pin-bottom');
                            $(this).css('top', options.bottom - $original_offset);
                        }
                    });
                }

                updateElements($this, $(window).scrollTop());
                $(window).on('scroll.' + $uniqueId, function() {
                    var $scrolled = $(window).scrollTop() + options.offset;
                    updateElements($this, $scrolled);
                });
            });
        };
    });
}(jQuery));

/************
APEX Initialization
************/
$(function() {
    // replace navbar brand
    $(".ab-header nav.navbar").prepend($(".ab-header a.navbar-brand").removeClass("hidden-xs-up"));

    // Carousel
    $(".carousel").each(function() {
        var carousel = $(this);

        carousel.find(".carousel-item").each(function(index) {
            var attributes = (index === 0) ? "class=\"active\"" : "";
            carousel.find(".carousel-indicators").append("<li " + attributes + " data-target=\"#" + $(carousel).attr("id") + "\" data-slide-to=\"" + index + "\"></li>");
        });
    });

    // Collapsible
    $(".ab-region.collapse").attr({
        "role": "tablist",
        "aria-multiselectable": "true"
    });

    $("button[target]").each(function() {
        if ($("#" + $(this).attr("target")).length > 0) {
            $(this).attr({
                "data-toggle": "collapse",
                "data-target": "#" + $(this).attr("target"),
                "aria-expanded": "false",
                "aria-controls": $(this).attr("target")
            });
        }
    });

    // Tooltips
    $(".ab-field-tooltip [data-help][data-help!=''], .ab-button-tooltip[data-help][data-help!='']").each(function() {
        $(this).attr({
            "data-toggle": "tooltip",
            "title": $(this).data("help")
        });
    });

    // Popovers
    $(".ab-field-popover [data-help][data-help!='']").each(function() {
        $(this).attr({
            "data-toggle": "popover",
            "data-content": $(this).data("help"),
            "title": $(this).text()
        });
    });

    $(".ab-button-popover[data-help][data-help!='']").each(function() {
        $(this).attr({
            "data-toggle": "popover",
            "data-content": $(this).data("help")
        });
    });

    // Pushpin
    $('.ab-sticky .navbar').each(function() {
        $(this).pushpin({
            top: $(this).offset().top,
            offset: $(".ab-navbar-fixed-top .ab-header .navbar").outerHeight()
        });
    });
});
