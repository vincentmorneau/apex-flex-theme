/************
APEX Initialization
************/
$(function() {
    $(".carousel").each(function() {
        var carousel = $(this);

        carousel.find(".carousel-item").each(function(index) {
            var attributes = (index === 0) ? "class=\"active\"" : "";
            carousel.find(".carousel-indicators").append("<li " + attributes + " data-target=\"#" + $(carousel).attr("id") + "\" data-slide-to=\"" + index + "\"></li>");
        });
    });
});
