<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/15 0015
  Time: 下午 3:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>智能气柜</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/bower_components/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="/dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="/dist/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="/plugins/bootstrap-treeview/dist/dataTables.bootstrap.css">
    <link rel="stylesheet" href="/plugins/bootstrap-treeview/dist/bootstrap-treeview.min.css">
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <jsp:include page="header.jsp" flush="true"></jsp:include>
    <jsp:include page="leftMenu.jsp" flush="true"></jsp:include>
    <div class="content-wrapper">
        <section class="content container-fluid" style="padding-top: 0px;">
            <div class="row">
                <div class="box-body">
                    <div class="alert alert-danger alert-dismissible" style="margin: 0;padding-top: 10px;padding-bottom: 10px;">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <span><b><i class="icon fa fa-ban"></i> 警告!</b></span> &nbsp;&nbsp;&nbsp;&nbsp;制浆机转速过快
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3">
                    <div class="box box-success">
                        <div class="box-body">
                            <div id="equTreeview" class="treeview"></div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-9">
                    <div class="box">
                        <div class="box-body">
                            <table id="equitment" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>编号</th>
                                    <th>自动</th>
                                    <th>开运行</th>
                                    <th>关运行</th>
                                    <th>开到位</th>
                                    <th>关到位</th>
                                    <th>故障</th>
                                    <th>开门</th>
                                    <th>关门</th>
                                    <th>时间</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>开</td>
                                        <td>开</td>
                                        <td>开</td>
                                        <td>开</td>
                                        <td>开</td>
                                        <td>开</td>
                                        <td>开</td>
                                        <td>开</td>
                                        <td>2018-04-15 22:44:55</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </section>
    </div>
</div>
<script src="/plugins/bootstrap-treeview/dist/jquery.dataTables.min.js"></script>
<script src="/plugins/bootstrap-treeview/dist/dataTables.bootstrap.min.js"></script>
<script src="/plugins/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
<script src="/js/pretreatmentEqu.js"></script>
</body>
</html>
