<%@ page import="FunctionLayer.Initialisation" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../include/header.inc" %>
<link rel="stylesheet" href="css/styles.css">
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<title>Admin</title>
</head>
<body>

    <%!
    @Override
    public void jspInit(){
        Initialisation.initOrders();
    }
%>

    <%
    request.setAttribute("order", Initialisation.getOrders());
%>

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
                    <li class="nav-item active">
                        <a class="nav-link text-white" href="FrontController?target=redirect&destination=admin"><h3>
                            Forside</h3></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="FrontController?target=redirect&destination=ordre"><h3>
                            Ordre</h3></a>
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
        <h1>Velkommen, ${sessionScope.email}</h1>


        <h3>Her kan du se ordre som afventer godkendelse:</h3>

        <ul style="list-style-type:square;">
            <c:forEach var="order" items="${requestScope.order}">
                <li>
                    ${order}
                </li>
            </c:forEach>
        </ul>

    </div>
</div>

<%@include file="../include/footer.inc" %>