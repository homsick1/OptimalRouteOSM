<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainwind.aspx.cs" Inherits="WebApplication2.mainwind" %>

<!DOCTYPE html>

<html>
    <head runat="server">
        <meta charset="utf-8"/>
        <title>JavaScript examples for the GraphHopper Directions API </title>
        <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>

        <link rel="stylesheet" href="css/leaflet.css?v=1.3.1" />
        <script type="text/javascript" src="js/leaflet.js?v=1.3.1"></script>

        <link rel="stylesheet" href="css/style.css" />

        <script type="text/javascript" src="js/bouncemarker.js"></script>
        <script type="text/javascript" src="dist/graphhopper-client.js?v=0.9.0-4"></script>
        <!-- map matching currently needs togeojson.js -->
        <script type="text/javascript" src="js/togeojson.js"></script>


        <script type="text/javascript" src="js/demo.js?v=0.9.0-4"></script>
    </head>
    <body>
        <form1 id="form1" runat="server">
        <div>
            Укажите количество транспортных средств, участвующих в маршруте:
            <input id="optimize_vehicles"style="margin: 5px;" type="number" min="1" max="4" value="2"/>
            <button id="optimize_button" style="margin: 5px;">Построить оптимальный маршрут</button>
            <button id="vrp_clear_button" style="margin: 5px;">Удалить все точки маршрута с карты</button>
        </div>
            <div>
            --
            <div id="vrp-error" style="float: left;"></div>
            <div id="vrp-response" style="float: left;"></div>
            </div>
            <div id="vrp-map" style="cursor: default; position: absolute; height: 90%; width:99%;"></div>           
        <!-- Piwik -->
        <script type="text/javascript">
            PIWIK = false;
            if (PIWIK) {
                var _paq = _paq || [];
                _paq.push(['trackPageView']);
                _paq.push(['enableLinkTracking']);
                (function () {
                    var u = (("https:" == document.location.protocol) ? "https" : "http") + "://graphhopper.com/piwik/";
                    _paq.push(['setTrackerUrl', u + 'piwik.php']);
                    _paq.push(['setSiteId', 1]);
                    var d = document, g = d.createElement('script'), s = d.getElementsByTagName('script')[0];
                    g.type = 'text/javascript';
                    g.defer = true;
                    g.async = true;
                    g.src = u + 'piwik.js';
                    s.parentNode.insertBefore(g, s);
                })();
            }
        </script>
        <!-- End Piwik Code -->
                    </form1>
    </body>
</html>
