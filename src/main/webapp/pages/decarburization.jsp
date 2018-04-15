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
            <!--
            <div class="row">
                <div class="box-body">
                    <div class="alert alert-danger alert-dismissible" style="margin: 0;padding-top: 10px;padding-bottom: 10px;">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <span><b><i class="icon fa fa-ban"></i> 警告!</b></span> &nbsp;&nbsp;&nbsp;&nbsp;气柜内膜压力过高
                    </div>
                </div>
            </div>
            -->
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-info">
                        <div class="box-header with-border">
                            <h3 class="box-title">工艺流程</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="row">
                                <img src="/images/脱硫.png" class="col-md-12" style="height: 200px;" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <!--气柜显示模型图-->
                <div class="col-md-5">
                    <!-- /.info-box -->
                    <div class="box box-default">
                        <div class="box-header with-border">
                            <h3 class="box-title">脱碳监测</h3>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table no-margin">
                                            <thead>
                                            <tr>
                                                <th>数据名称</th>
                                                <th>状态</th>
                                                <th>当前值</th>
                                                <th>最佳区间</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${dataConfig['decarburization']}" var="configs">
                                                <tr>
                                                    <td>
                                                        <a href="pages/examples/invoice.html">${sensors[configs].nickName}</a>
                                                    </td>
                                                    <td>${sensors[configs].sensorDesc}</td>
                                                    <c:choose>
                                                        <c:when test="${realTimeData[configs] < sensors[configs].suitableMaximum && realTimeData[configs] > sensors[configs].suitableMinimum}">
                                                            <td><span class="label label-success">正常</span></td>
                                                            <td><span class="label label-success">${realTimeData[configs]}${sensors[configs].sensorUnit}</span></td>
                                                        </c:when>
                                                        <c:when
                                                                test="${realTimeData[configs] > sensors[configs].highErrorValue
                                                                && realTimeData[configs] < sensors[configs].lowErrorValue}">
                                                            <td><span class="label label-danger">报警</span></td>
                                                            <td><span class="label label-danger">${realTimeData[configs]}${sensors[configs].sensorUnit}</span></td>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <td><span class="label label-warning">警告</span></td>
                                                            <td><span class="label label-warning">${realTimeData[configs]}${sensors[configs].sensorUnit}</span></td>
                                                        </c:otherwise>
                                                    </c:choose>
                                                    <td>
                                                        <div class="sparkbar" data-color="#00a65a" data-height="20">
                                                                ${sensors[configs].suitableMinimum}${sensors[configs].sensorUnit} - ${sensors[configs].suitableMaximum}${sensors[configs].sensorUnit}
                                                        </div>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="box-footer clearfix">
                            <div class="footerBox">
                                <a href="../../pages/mypage/气柜保存页面.html"class="btn btn-sm btn-default btn-flat pull-left ">详细数据列表</a>
                                <span class="btn pull-right">数据日期：2018-08-12 22:33</span>
                            </div>
                        </div>
                    </div>
                </div>
                <!--数据统计图-->
                <div class="col-md-7">
                    <div class="box box-info">
                        <div class="box-header with-border">
                            <h3 class="box-title">智能功能</h3>
                            <div class="box-tools pull-right intelligent">
                                <button type="button" class="btn btn-default btn-primary statistics" data-toggle="modal" data-target="#modal-default">
                                    数据统计
                                </button>
                                <button type="button" class="btn btn-default benefit" data-toggle="modal" data-target="#modal-default">
                                    收益报告
                                </button>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div id="showStatistics" style="width: 100%;height: 378px;">
                                <div id="leftShow" style="height: 100%;width: 100%;"></div>
                            </div>
                            <div id="showBenefit" style="width: 100%;height: 378px;">
                                <div class="col-sm-8" style="height: 100%;" id="benefitChart"></div>
                                <div class="col-sm-4" style="border-left: 1px solid #D5E2F3;padding-left: 25px;">
                                    <div class="row">
                                        <p class="text-center">
                                            <strong>今日收益报告</strong>
                                        </p>
                                        <ul class="products-list product-list-in-box">
                                            <li class="item" style="border-bottom: 1px solid #D2D6DE;">
                                                <div class="product-img">
                                                    <img src="/images/操作_蒸汽.png" alt="Product Image">
                                                </div>
                                                <div class="product-info">
                                                    <a href="javascript:void(0)" class="product-title">
                                                        搅拌速度调节
                                                        <span class="label label-warning pull-right">2000元</span>
                                                    </a>
                                                    <span class="product-description">
                                                        用电低峰加快处理速度，同比节省0.2W元
                                                    </span>
                                                </div>
                                            </li>
                                            <li class="item" style="border-bottom: 1px solid #D2D6DE;">
                                                <div class="product-img">
                                                    <img src="/images/闪电.png" alt="Product Image">
                                                </div>
                                                <div class="product-info">
                                                    <a href="javascript:void(0)" class="product-title">
                                                        合理调节稳定指数
                                                        <span class="label label-warning pull-right">100元</span>
                                                    </a>
                                                    <span class="product-description">
                                                        减少多人工查看，同比节省时间3H，节约成本100元
                                                    </span>
                                                </div>
                                            </li>
                                            <li class="item">
                                                <div class="product-img">
                                                    <img src="/images/效益.png" alt="Product Image">
                                                </div>
                                                <div class="product-info">
                                                    <a href="javascript:void(0)" class="product-title">
                                                        总效益
                                                        <span class="label label-warning pull-right">2100元</span>
                                                    </a>
                                                    <span class="product-description">
                                                        能耗节省0.2万元，人工成本节省100元
                                                    </span>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<script src="/plugins/chart/echarts.js"></script>
<script src="/js/decarburization.js?v=0.0.1"></script>
</body>
</html>
