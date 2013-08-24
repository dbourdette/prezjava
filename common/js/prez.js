$(document).ready(function() {
    $('a.external').each(function() {
        $(this).attr('target', '_blank');
    });

    $('pre').each(function() {
        if (!$(this).hasClass('shell')) {
            $(this).wrap('<div class="prebubble" />');
        }
    });
});