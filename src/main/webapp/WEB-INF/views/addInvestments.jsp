<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<!-- HEADER -->
<%@ include file="/header.jsp" %>

<!-- SIDEBAR -->
<%@ include file="/sidebar.jsp" %>

<!-- TOPBARNAVIGATION-->
<%@ include file="/topbarnavigation.jsp" %>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Add Investment</h1>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered border-bottom-success " id="dataTable" width="100%"
                   cellspacing="0">
                <thead>
                <tr>
                    <th>Ranking</th>
                    <th>Name</th>
                    <th>Symbol</th>
                    <th>Price</th>
                    <th>Market Cap</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>${cryptocurrency.mcr}</td>
                    <td style="font-weight: bold"><img SRC="${cryptocurrency.image}"
                                                       width="35"> ${cryptocurrency.name}</td>
                    <td>${fn:toUpperCase(cryptocurrency.symbol)}</td>
                    <td>${cryptocurrency.price} $</td>
                    <td>${cryptocurrency.marketcap} $</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="card shadow mb-4" style="width: 600px">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary" style="font-size: 30px">
                Enter the quantity of cryptocurrency :</h6>
            <div>
                <form:form method="post" modelAttribute="investment">
                    <form:input type="text" id="quantityOfCryptocurrency" name="quantityOfCryptocurrency" path="quantityOfCryptocurrency"/><br>
                    <input type="submit" value="save">
                </form:form>
            </div>
        </div>
        <div class="card-body">

        </div>
    </div>
</div>
</div>
</div>
</div>
</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="/#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
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
                <a class="btn btn-primary" href="/login.html">Logout</a>
            </div>
        </div>
    </div>
</div>

<!-- SCRIPT-->
<%@ include file="/script.jsp" %>


</body>

</html>
