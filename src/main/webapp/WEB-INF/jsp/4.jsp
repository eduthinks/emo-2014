<!DOCTYPE html>
<html>
    <head>
        <title>Olio-ohjelmointi</title>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/js/libs/twitter-bootstrap/css/bootstrap.css"/>
    </head>
    <body>

        <div class="container">
            
            <p></p>
            
            <p>Ohessa on esimerkkej� erilaisista olioista graafisesti esitettyn�.</p>
            
            <img src="/img/${materialType}/olioita.png"/>
            
            <p>Huomaa t�st� kuvastakin, ett� olioilla on sek� tietoja, jotka niihin liittyv�t (esim. opiskelijaolion opiskelijanumero, nappulaolion teksti), ett� toimintoja, joita niihin voidaan kohdistaa (esim. opiskelijan lis��minen kurssille, tiedoston poistaminen). Huomaa my�s, ett� oliot voivat muistuttaa toisiaan - olla kesken��n saman tyyppisi� - kuten kaksi el�inoliota yll�. </p>
            
            
            <form action="/app/submit-material-${materialId}-seen" method="POST">

                <input type="hidden" name="visitStarted" id="visitStarted"/>
                <input type="hidden" name="visitEnded" id="visitEnded"/>
                
                <button type="button" class="btn btn-primary" id="forwardButton">Eteenp�in</button>
            </form>
        </div>

        <script src="/js/libs/jquery/jquery.js"></script>
        <script src="/js/libs/twitter-bootstrap/js/bootstrap.js"></script>

        <script>
            $(function() {
                $("#visitStarted").val(new Date());

                $("#forwardButton").click(function() {
                    $("#visitEnded").val(new Date());
                    $("form").submit();
                });
            });
        </script>
    </body>
</html>
