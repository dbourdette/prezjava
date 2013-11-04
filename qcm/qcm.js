$(function() {
    $("form").submit(function() {
        var qcm = {};
        qcm.answers = {};

        $("input:radio:checked").each(function(index, input) {
            qcm.answers[input.name] = $.trim($(input).parent().text());
        });

        qcm.user = $("input[name=user]").val();
        qcm.day = $("form").attr("data-day");
        qcm.date = new Date();

        $("input[type=submit]").hide();
        $("#message").html('<div class="alert">Envoi en cours...</div>');

        $.ajax({ url: "https://api.mongolab.com/api/1/databases/prezjava/collections/qcm?apiKey=4e4562755e4c1f31ad38855d",
            data: JSON.stringify( qcm ),
            type: "POST",
            contentType: "application/json"
        }).done(function( msg ) {
                    $("#message").html('<div class="alert alert-success">Merci</div>');
                });

        return false;
    });
});