$(document).ready(function() {
    $('a[target="_blank"]').each(function() {
        $(this).append(' <small><span class="glyphicon glyphicon-new-window"></span></small>')
    });
});