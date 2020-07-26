
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@include file="/header.jsp" %>

<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Dodaj Użytkownika</a>
    </div>
</div>
<div>
<form action="/useradd" method="post">

    <label> Nazwa użytkownika:
        <input name="userName" type="text" placeholder="Podaj nazwę użytkownika"/></label>
    <label> Email:
        <input name="email" type="text" placeholder="Podja email"/></label>
    <label> Hasło
        <input name="password" type="text" placeholder="Hasło"/></label>

    <button type="submit">Zapisz</button>

</form>
</div>

<%@include file="/footer.jsp" %>
