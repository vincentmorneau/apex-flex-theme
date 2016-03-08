/************
Bootstrap Initialization
************/
$(function() {
    // Tooltips
    $('[data-toggle="tooltip"]').tooltip(appSettings.tooltip);
    // Popovers
    $('[data-toggle="popover"]').popover(appSettings.popover);
    // Scrollspy
    $(".ab-list-scrollspy").each(function(){
        $('body').scrollspy({ target: '#' + $(this).attr("id") });
    });
});
