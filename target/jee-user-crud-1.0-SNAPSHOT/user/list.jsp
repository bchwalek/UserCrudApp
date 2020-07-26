

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@include file="/header.jsp" %>

            <div class="container-fluid">
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">UserCRUD</h1>
                    <a href="useradd" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Dodaj Użytkownika</a>
                </div>
            </div>

<div>



    <c:forEach items="${users}" var="user">

    <div>
        <table class="table table-bordered"  width="100%" cellspacing="0" cellpadding="0">
            <th>ID</th><th>Nazwa Uzytkownika</th><th>Email</th><th>Akcja</th>
            <tr>
                <td>${user.id}</td> <td>${user.userName}</td><td>${user.email}</td><td>
                <a href="usershow?id=${user.id}" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"> Wyświetl</a>
                <a href="useredit?id=${user.id}" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"> Edutuj</a>
                <a href="userdelete?id=${user.id}" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"> Usuń</a>
                 </td>
            </tr>
            <hr class="sidebar-divider">
        </table>
    </div>
    </c:forEach>
</div>


<%@include file="/footer.jsp" %>






<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="login.html">Logout</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="js/demo/chart-area-demo.js"></script>
<script src="js/demo/chart-pie-demo.js"></script>

