<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../include/header.inc" %>
<link rel="stylesheet" href="css/styles.css">
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<title>Carport med Rejsning tag</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light">
    <a class="navbar-brand" href="#"> <img src="./images/logo.png" width="100" height="100" alt="Logo"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText"
            aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav mr-auto ">
            <ul class="navbar-nav mr-5 mt-60 mt-lg-0">
                <div class="col-lg-auto">
                    <li class="nav-item">
                        <a class="nav-link text-white" href="FrontController?target=redirect&destination=index"><h3>
                            Forside</h3></a>
                    </li>
                </div>
            </ul>
        </ul>
        <span class="navbar-text mr-5">
            ${sessionScope.email}
        </span>
        <%@include file="/include/dropdownMenu.inc" %>
    </div>
</nav>

<div class="container jumbotron ">

    <div class="jumbotron mr-5 mt-20 mt-lg-0">

        <div class="row">
            <div class="col-9">
                <h2>Caport med rejsning tag</h2>
                <p>En carport med rejsning tag giver mange muligheder –
                    Man får en mulighed for at have et loft i skuret som man kan benytte og gøre fuld brug af.
                </p>
                <p>Når De har indtaste Deres ønskede mål, vil de blive videresendt til en ansat, som vil vende
                    tilbage til Dem for at sikre, at målenes sammenhæng er ideel.
                </p>
            </div>
            <div class="col-3">
                <img src="images/rejsning.png" class="img-fluid mx-auto d-block" alt="Carport med fladt tag"/>
            </div>
        </div>

        <h3>Byg Deres egen Carport</h3>
        <p class="mb-0">Nedenunder kan De tilpasse mål og materialer efter egne ønsker.</p>
        <p class="mb-0">Vær dog opmærksom på følgende:</p>
        <ul style="list-style-type: circle">
            <li>Skurets mål må ikke være større end carportens.</li>
            <li>Der skal være en minimumslængde på 70 cm mellem skurets bredde og carportens bredde.</li>
            <li>Der skal være en minimumslængde på 30 cm mellem skurets længde og carportens længde.</li>
        </ul>
        <p class="nbText">NB: Nedenstående mål er i centimeter.</p>

        <form action="FrontController" method="post">
            <input type="hidden" name="target" value="carportDesign">

            <div class="row">
                <div class="col-3">

                    <select class="form-control" name="length">
                        <option value="">Vælg Længde (i cm)</option>
                        <c:forEach var="tmpLength" items="${requestScope.carport_lengths}">
                            <option name="length">${tmpLength}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-3">
                    <select class="form-control" name="width">
                        <option value="">Vælg Bredde (i cm)</option>
                        <c:forEach var="tmpWidth" items="${requestScope.carport_widths}">
                            <option name="width">${tmpWidth}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-3">
                    <select class="form-control" name="height">
                        <option value="">Vælg Højde (i cm)</option>
                        <c:forEach var="tmpHeight" items="${requestScope.carport_heights}">
                            <option name="height">${tmpHeight}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>

            <br>

            <div class="row">
                <div class="col-3">
                    <select class="form-control" name="roof">
                        <option value="">Vælg Tag</option>
                        <c:forEach var="tmpRoof" items="${requestScope.carport_roofs}">
                            <option name="roof">${tmpRoof}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-3">
                    <select class="form-control" name="roofPitch">
                        <option value="">Vælg Taghældning (i grader)</option>
                        <c:forEach var="tmpRoofPitch" items="${requestScope.roof_pitch}">
                            <option name="roofPitch">${tmpRoofPitch}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-6"></div>
            </div>

            <br>

            <p class="beskedRød">${requestScope.fejl}</p>
            Med redskabsrum: <input name="checkboxShed" type="checkbox" id="myCheck" onclick="myFunction()">

            <br>
            <br>

            <div class="row" id="shed" style="visibility: hidden;">
                <div class="col-3">
                    <select class="form-control" name="shedLength">
                        <option value="">Vælg Skurlængde (i cm)</option>
                        <c:forEach var="tmpShedLength" items="${requestScope.shed_lengths}">
                            <option name="shedLength">${tmpShedLength}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-3">
                    <select class="form-control" name="shedWidth">
                        <option value="">Vælg Skurbredde (i cm)</option>
                        <c:forEach var="tmpShedWidth" items="${requestScope.shed_widths}">
                            <option name="shedWidth">${tmpShedWidth}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-6"></div>
            </div>

            <div class="text-left mt-4">
                <input class="btn tlfNumberBox" name="tlfNumber" type="number" placeholder="Indtast tlf. nummer:">
                <button class="btn btn-primary" type="submit">Indtast</button>
            </div>
        </form>


        <script>
            function myFunction() {
                var checkBox = document.getElementById("myCheck");
                var shed = document.getElementById("shed");
                if (checkBox.checked == true){
                    shed.style.visibility = "visible";
                } else {
                    shed.style.visibility = "hidden";
                }
            }
        </script>



    </div>
</div>

<%@include file="../include/footer.inc" %>
