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
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <jsp:include page="header.jsp" flush="true"></jsp:include>
    <jsp:include page="leftMenu.jsp" flush="true"></jsp:include>
    <div class="content-wrapper">
        <section class="content container-fluid">
            <div class="row">
                <div class="box-body">
                    <div class="alert alert-danger alert-dismissible" style="margin: 0;padding-top: 10px;padding-bottom: 10px;">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <span><b><i class="icon fa fa-ban"></i> 警告!</b></span> &nbsp;&nbsp;&nbsp;&nbsp;制浆机转速过快
                    </div>
                </div>
            </div>
            <div class="row">
                <!--气柜显示模型图-->
                <div class="col-md-5">
                    <!-- /.info-box -->
                    <div class="box box-default">
                        <div class="box-header with-border">
                            <h3 class="box-title">
                                <select class="" style="border: none">
                                    <option selected="selected">福州餐厨项目#1</option>
                                    <option>福州餐厨项目#2</option>
                                    <option>福州餐厨项目#3</option>
                                </select>
                            </h3>
                            <div class="box-tools">
                                <button type="button" class="btn btn-box-tool"><i class=""></i></button>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="row">
                                <img src="/images/timg.jpg" class="col-md-7" alt="">
                                <!-- /.col -->
                                <div class="col-md-5">
                                    <ul class="nav nav-pills nav-stacked">
                                        <c:forEach items="${dataConfig['anaerobicTank']}" var="configs">
                                            <li>
                                                <a href="#">
                                                        ${sensors[configs].nickName}
                                                    <c:choose>
                                                        <c:when test="${realTimeData[configs] < sensors[configs].suitableMaximum && realTimeData[configs] > sensors[configs].suitableMinimum}">
                                                            <span class="pull-right text-green">${realTimeData[configs]}vol%</span>
                                                        </c:when>
                                                        <c:when
                                                                test="${realTimeData[configs] > sensors[configs].highErrorValue && realTimeData[configs] < sensors[configs].lowErrorValue}">
                                                            <td><span class="pull-right text-red">${realTimeData[configs]}vol%</span></td>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <td><span class="pull-right text-yellow">${realTimeData[configs]}vol%</span></td>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </a>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer clearfix">
                            <div class="footerBox" style="margin-top: 20px;">
                                <a href="../../pages/mypage/气柜保存页面.html"class="btn btn-sm btn-default btn-flat pull-left ">详细数据列表</a>
                                <span class="btn pull-right">数据日期：${realTimeData['addFromatTime']}</span>
                            </div>
                        </div>
                        <!-- /.footer -->
                    </div>
                    <!-- /.box -->
                </div>
                <!--数据统计图-->
                <div class="col-md-7">
                    <!-- TABLE: LATEST ORDERS -->
                    <div class="box box-info">
                        <div class="box-header with-border">
                            <h3 class="box-title">智能功能</h3>
                            <div class="box-tools pull-right intelligent">
                                <button type="button" class="btn btn-primary diagnosis" data-toggle="modal" data-target="#modal-default">
                                    智能诊断
                                </button>
                                <button type="button" class="btn btn-default mixingCycle" data-toggle="modal" data-target="#modal-default">
                                    搅拌周期
                                </button>
                                <button type="button" class="btn btn-default statistics" data-toggle="modal" data-target="#modal-default">
                                    数据统计
                                </button>
                                <button type="button" class="btn btn-default gasForecast" data-toggle="modal" data-target="#modal-default">
                                    产气预测
                                </button>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div id="showData" style="width: 100%;height: 360px;">
                                <div class="col-sm-8" style="height: 100%;" id="leftShow"></div>
                                <div class="col-sm-4" style="border-left: 1px solid #F4F4F4;" id="rightShow">
                                    <ul class="list-group">
                                        <li class="list-group-item">
                                            <div class="text-yellow">
                                                <i class="fa  fa-exclamation-triangle"></i><span style="font-weight: bold;">警告</span>
                                                <span class="pull-right">指数过高</span>
                                            </div>
                                            <span>2017-04-25 12:44:55</span>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="text-red">
                                                <i class="fa fa-exclamation"></i><span style="font-weight: bold;">超高预警</span>
                                                <span class="pull-right">指数过高</span>
                                            </div>
                                            <span>2017-03-04 12:44:55</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.box -->
                </div>
            </div>
        </section>
    </div>
</div>
</body>
<script src="/plugins/chart/echarts.js"></script>
<script src="/js/anaerobicTank.js"></script>
</html>
