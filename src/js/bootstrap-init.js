/************
Bootstrap Initialization
************/
$(function() {
    // Tooltips
    $('[data-toggle="tooltip"]').tooltip(appSettings.tooltip);
    // Popovers
    $('[data-toggle="popover"]').popover(appSettings.popover);
});
