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
                <h1 class="h3 mb-0 text-gray-800">Today's Cryptocurrency Prices by Market Cap</h1>
            </div>

            <!-- DataTales Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary" style="font-size: larger">Cryptocurrencies</h6>
                    <div style="float: right">
                        Click
                        <a class="btn btn-success btn-circle">
                            <i class="fas fa-check"></i>
                        </a>
                        to add cryptocurrency to investments.
                    </div>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                            <tr>
                                <th>Ranking</th>
                                <th>Name</th>
                                <th>Symbol</th>
                                <th>Price</th>
                                <th>24h change %</th>
                                <th>Market Cap</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${cryptocurrencys}" var="cryptocurrency">
                                <tr>
                                    <td>${cryptocurrency.mcr}</td>
                                    <td style="font-weight: bold"><img SRC="${cryptocurrency.image}"
                                                                       width="35"> ${cryptocurrency.name}</td>
                                    <td>${fn:toUpperCase(cryptocurrency.symbol)}</td>
                                    <td>${cryptocurrency.price} $</td>
                                    <td>${cryptocurrency.daychange} %</td>
                                    <td>${cryptocurrency.marketcap} $</td>
                                    <td>
                                        <a href="/investments/add/${cryptocurrency.mcr}"
                                           class="btn btn-success btn-circle">
                                            <i class="fas fa-check"></i>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End of Main Content -->
</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
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
                <a class="btn btn-primary" href="login.html">Logout</a>
            </div>
        </div>
    </div>
</div>

<!-- SCRIPT-->
<%@ include file="/script.jsp" %>

</body>

</html>