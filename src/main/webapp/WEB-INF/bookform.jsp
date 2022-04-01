<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:pagetemplate>
    <jsp:attribute name="header">
             Book gus
    </jsp:attribute>

    <jsp:attribute name="footer">

    </jsp:attribute>

    <jsp:body>

        <h3>Udfyld venligst dine informationer og book plads</h3>

        <form action="book" method="post">
            <div class="form-group">
                <label for="name">Navn: </label>
                <input type="text" id="name" name="navn" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="phone">Telefonnummer: </label>
                <input type="text" id="phone" name="phone" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="quantity">Antal pladser</label>
                <input type="number" min="1" max="10" name="quantity" id="quantity" class="form-control"/>
            </div>
            <div class="mt-2">
                <input type="submit" value="Book plads" class="btn btn-primary"/>
            </div>
        </form>

    </jsp:body>
</t:pagetemplate>