<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:pagetemplate>
    <jsp:attribute name="header">
         Så er der luksus-gus til folket
    </jsp:attribute>

    <jsp:attribute name="footer">
        Footertext
    </jsp:attribute>

    <jsp:body>


        <h2 class="mt-4 mb-4">Vi har følgende begivenheder, som du kan tilmelde dig.</h2>

        <form method="post">
            <div class="d-flex flex-wrap">

                <c:forEach var="e" items="${requestScope.events}">

                    <div class="card text-center m-2" style="width: 14rem;">
                        <div class="card-header">
                            <h4>${e.monthName} ${e.year}</h4>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">${e.weekDay} ${e.dayOfMonth}/${e.month} &nbsp;
                                <a target="_blank" href="${e.gMapLink}"><i class="bi bi-map"></i></a>

                            </h5>
                            <p class="card-text">
                                <strong>${e.eventName}</strong><br/>
                                ${e.locationName} i ${e.city}</br>
                                ${e.limit - e.count} ledige pladser</p>
                            <p> ${e.}
                                <button class="btn btn-primary"
                                        name="eventid"
                                        value="${e.eventId}"
                                        formaction="bookform">Book
                                </button>
                            </p>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </form>


        <div class="row mt-5">
            <div class="col-md-4 p-3">
                <div class="card">
                    <img class="card-img-top" src="images/sebastian.jpg" alt="Sebastian"/>
                    <div class="card-body">
                        <p class="card-text"><strong>Sebastian Larvad</strong><br/>
                            Gusmester</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 p-3">
                <div class="card">
                    <img class="card-img-top" src="images/morten.jpg" alt="Morten"/>
                    <div class="card-body">
                        <p class="card-text"><strong>Morten Larvad</strong><br/>
                            Fyrmester</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 p-3">
                <div class="card">
                    <img class="card-img-top" src="images/sauna_gus.jpg" alt="Sauna"/>
                    <div class="card-body">
                        <p class="card-text"><strong>Brændefyret sauna</strong><br/>
                            med plads til 10-12 personer</p>
                    </div>
                </div>

            </div>
        </div>


    </jsp:body>

</t:pagetemplate>