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
        <h1 class="h3 mb-0 text-danger">Are you sure you want to close this investment ? :</h1>
    </div>
    <div class="col-xl-12 col-md-6 mb-4">
        <div class="card border-left-danger shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xl-left font-weight-bold text-success text-uppercase mb-1">
                            ${investment.cryptocurrency.name}</div>
                        <div class="h8 mb-0 font-weight-bold text-gray-800">
                            <table class="table table-bordered text-gray-800" id="dataTable" width="100%"
                                   cellspacing="0">
                                <thead>
                                <tr>
                                    <th>Coins:</th>
                                    <th>Value $:</th>
                                    <th>Profit % :</th>
                                    <th>Profit in $ :</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>${investment.quantityOfCryptocurrency}</td>
                                    <td>${investment.quantityOfCryptocurrencyInDolar}</td>
                                    <td>${investment.currentIncomeInPercentages} %</td>
                                    <td>${investment.currentIncomeInDollars}</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- TUTAJ BUTTON-->
    <a href="/investments" class="btn btn-secondary btn-icon-split" s>
                                        <span class="icon text-white-50">
                                            <i class="fas fa-arrow-right"></i>
                                        </span>
        <span class="text">CANCEL</span>
    </a>
    <a href="/investments/close/summary/${investment.id}" class="btn btn-success btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-check"></i>
                                        </span>
        <span class="text">YES close ivestment</span>
    </a>

</div>

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
                    <span aria-hidden="true">??</span>
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