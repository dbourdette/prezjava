$(document).ready(function() {
    $('a.external').each(function() {
        $(this).attr('target', '_blank');
    });

    $('pre').each(function() {
        $(this).wrap('<div class="prebubble" />');
    });
});