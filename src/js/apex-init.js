/************
APEX Initialization
************/
$(function() {
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
        "role":"tablist",
        "aria-multiselectable":"true"
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
});
