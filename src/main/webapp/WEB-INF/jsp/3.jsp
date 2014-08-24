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
            
            <img src="/img/${materialType}/auto-olio.png"/>
            
            <p>Yksitt�ist� kurssia, opiskelijaa, pankkitili�, k�ytt�liittym�n ikkunaa tai nappulaa vastaa olio-ohjelmassa yksi <strong>olio</strong> (<em>object</em>). Yleens� kuhunkin olioon liittyy toimintoja eli <strong>metodeja</strong> (<em>method</em>), joilla oliota voidaan hy�dynt��. Esimerkiksi autoa voitaisiin kuvata oliona, jolla on metodeja kuten "aja", "lis�� matkustaja", "tankkaa", "kerro bensan m��r�" jne.</p>
            
            <p>Olioon liittyy usein my�s ominaisuuksia, jotka kuvaavat sen pysyvi� tai muuttuvia piirteit�. Esimerkiksi auto-olion tietoja voisivat olla sen merkki, bensatankin sis�lt�m�n bensan m��r�, sijainti ja sis�ll� olevat matkustajat. Ohjelmoija valitsee, mit� ominaisuuksia ja metodeja olioihin liittyy. Valintaan vaikuttaa ratkaisevasti se, mit� asioita kyseisess� ohjelmassa halutaan mallintaa. Ohjelmaa ajettaessa tietokone pit�� oliot tallessa muistissaan.</p>

            
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
