<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>DelicousInfo-admin</title>

    <%@include file="include/food-list/food-list-css.jsp"%>

</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

   <%-- <!-- Preloader -->
    <div class="preloader flex-column justify-content-center align-items-center">
        <img class="animation__shake" src="/adminLTE/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
    </div>--%>

    <!-- header -->
    <%@include file="./include/header.jsp"%>
    <!-- /header -->

    <!-- Main Sidebar Container -->
   <%@include file="./include/sidebar.jsp"%>
   <!-- Main Sidebar Container -->

    <!-- Content Wrapper. Contains page content -->

       <!-- Content Wrapper. Contains page content -->
       <div class="content-wrapper">
           <!-- Content Header (Page header) -->
           <section class="content-header">
               <div class="container-fluid">
                   <div class="row mb-2">
                       <div class="col-sm-6">
                           <h1>DataTables</h1>
                       </div>
                       <div class="col-sm-6">
                           <ol class="breadcrumb float-sm-right">
                               <li class="breadcrumb-item"><a href="#">Home</a></li>
                               <li class="breadcrumb-item active">DataTables</li>
                           </ol>
                       </div>
                   </div>
               </div><!-- /.container-fluid -->
           </section>

           <!-- Main content -->
           <section class="content">
               <div class="container-fluid">
                   <div class="row">
                       <div class="col-12">

                           <div class="card">
                               <div class="card-header">
                                   <h3 class="card-title">DataTable with default features</h3>
                               </div>
                               <!-- /.card-header -->
                               <div class="card-body">
                                   <table id="example1" class="table table-bordered table-striped">
                                       <thead>
                                       <tr>
                                           <th>foodNo</th>
                                           <th>Name</th>
                                           <th>Kcal</th>

                                       </tr>
                                       </thead>
                                       <tbody>
                                       <c:forEach var="food" items="${foodList}">
                                       <tr>
                                           <td>${food.foodNo}</td>
                                            <a href="/admin/food/${foodNo}"><td>${food.name}</td></a>
                                           <td>${food.kcal}</td>
                                       </tr>
                                       </c:forEach>

                                       </tbody>
                                       <tfoot>
                                       <tr>
                                           <th>foodNo</th>
                                           <th>Name</th>
                                           <th>Kcal</th>
                                       </tr>
                                       </tfoot>
                                   </table>
                               </div>
                               <!-- /.card-body -->
                           </div>
                           <!-- /.card -->
                       </div>
                       <!-- /.col -->
                   </div>
                   <!-- /.row -->
               </div>
               <!-- /.container-fluid -->
           </section>
           <!-- /.content -->
       </div>
       <!-- /.content-wrapper -->

    <!--footer -->
    <%@ include file="./include/footer.jsp" %>
    <!--/footer-->
</div>
<%@ include file="include/food-list/food-list-js.jsp"%>
</body>
</html>
