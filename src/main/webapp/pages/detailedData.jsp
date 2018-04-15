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
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-red">
                        <div class="inner">
                            <h3>20</h3>
                            <p>报警信息</p>
                        </div>
                        <div class="icon">
                            <i class="fa fa-warning"></i>
                        </div>
                        <a href="#" class="small-box-footer">详细信息 <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6 ">
                    <!-- small box -->
                    <div class="small-box bg-yellow">
                        <div class="inner">
                            <h3>2</h3>
                            <p>安防信息</p>
                        </div>
                        <div class="icon">
                            <i class="fa fa-shield"></i>
                        </div>
                        <a href="#" class="small-box-footer">详细信息 <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-green">
                        <div class="inner">
                            <h3>65</h3>
                            <p>预警信息</p>
                        </div>
                        <div class="icon">
                            <i class="fa fa-bell"></i>
                        </div>
                        <a href="#" class="small-box-footer">详细信息 <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-aqua">
                        <div class="inner">
                            <h3>85</h3>
                            <p>操作历史记录</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-pie-graph"></i>
                        </div>
                        <a href="#" class="small-box-footer">详细信息 <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
            </div>
            <!-- Main row -->
            <div class="row">
                <div class="col-md-7">
                    <!-- TABLE: LATEST ORDERS -->
                    <div class="box box-info">
                        <div class="box-header with-border">
                            <h3 class="box-title">智能罐</h3>
                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                    <i class="fa fa-minus"></i>
                                </button>
                                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i>
                                </button>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="table-responsive">
                                <table class="table no-margin">
                                    <thead>
                                    <tr>
                                        <th>数据名称</th>
                                        <th>功能</th>
                                        <th>状态</th>
                                        <th>当前值</th>
                                        <th>参考值</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${dataConfig['anaerobicTank']}" var="configs">
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
                                        <!--
                                        <tr>
                                            <td>
                                                <a href="pages/examples/invoice.html">VFA</a>
                                            </td>
                                            <td>掌握发酵核心过程</td>
                                            <td><span class="label label-success">正常</span></td>
                                            <td>—</td>
                                            <td>
                                                <div class="sparkbar" data-color="#f39c12" data-height="20">—</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="pages/examples/invoice.html">罐体温度1</a>
                                            </td>
                                            <td>发酵温度测量</td>
                                            <td><span class="label label-danger">报警</span></td>
                                            <td><span class="label label-danger">93℃</span></td>
                                            <td>
                                                <div class="sparkbar" data-color="#f56954" data-height="20">50℃-60℃</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="pages/examples/invoice.html">产气压力</a>
                                            </td>
                                            <td>产气压力检测</td>
                                            <td><span class="label label-info">预警</span></td>
                                            <td><span class="label label-info">90kPa</span></td>
                                            <td>
                                                <div class="sparkbar" data-color="#00c0ef" data-height="20">80kPa-94kPa</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="pages/examples/invoice.html">罐体液位</a>
                                            </td>
                                            <td>罐体液位测量</td>
                                            <td><span class="label label-success">正常</span></td>
                                            <td><span class="label label-success">1m</span></td>
                                            <td>
                                                <div class="sparkbar" data-color="#f39c12" data-height="20">0.5m-3m</div>
                                            </td>
                                        </tr>
                                        -->
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer clearfix">
                            <a href="javascript:void(0)" class="btn btn-sm btn-default btn-flat pull-left">详细数据列表</a>
                            <span class="btn pull-right">数据日期：${realTimeData['addFromatTime']}</span>
                        </div>
                        <!-- /.box-footer -->
                    </div>
                    <!-- /.box -->
                </div>
                <div class="col-md-5">
                    <div class="box box-default">
                        <div class="box-header with-border">
                            <h3 class="box-title">智能气柜</h3>
                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                    <i class="fa fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-7" id="gasTankPie" style="height: 220px"></div>
                                <div class="col-md-5">
                                    <ul class="nav nav-pills nav-stacked changeChart">
                                        <c:forEach items="${dataConfig['gasTank']}" var="configs">
                                            <li>
                                                <a href="#">
                                                    ${sensors[configs].nickName}
                                                    <c:choose>
                                                        <c:when test="${realTimeData[configs] < sensors[configs].suitableMaximum && realTimeData[configs] > sensors[configs].suitableMinimum}">
                                                            <span class="pull-right text-green">${realTimeData[configs]}${sensors[configs].sensorUnit}</span>
                                                        </c:when>
                                                        <c:when
                                                                test="${realTimeData[configs] > sensors[configs].highErrorValue && realTimeData[configs] < sensors[configs].lowErrorValue}">
                                                            <td><span class="pull-right text-red">${realTimeData[configs]}${sensors[configs].sensorUnit}</span></td>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <td><span class="pull-right text-yellow">${realTimeData[configs]}${sensors[configs].sensorUnit}</span></td>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </a>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="box-footer clearfix">
                            <div class="footerBox">
                                <a href="../../pages/mypage/气柜保存页面.html"class="btn btn-sm btn-default btn-flat pull-left ">详细数据列表</a>
                                <span class="btn pull-right">数据日期：${realTimeData['addFromatTime']}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="box box-info">
                        <div class="box-header with-border">
                            <h3 class="box-title">脱硫 </h3>
                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                    <i class="fa fa-minus"></i>
                                </button>
                                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i>
                                </button>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
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
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer clearfix">
                            <a href="javascript:void(0)" class="btn btn-sm btn-default btn-flat pull-left">详细数据列表</a>
                            <span class="btn pull-right">数据日期：${realTimeData['addFromatTime']}</span>
                        </div>
                        <!-- /.box-footer -->
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="box box-info">
                        <div class="box-header with-border">
                            <h3 class="box-title">脱碳 </h3>
                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                    <i class="fa fa-minus"></i>
                                </button>
                                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i>
                                </button>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
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
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer clearfix">
                            <a href="javascript:void(0)" class="btn btn-sm btn-default btn-flat pull-left">详细数据列表</a>
                            <span class="btn pull-right">数据日期：${realTimeData['addFromatTime']}</span>
                        </div>
                        <!-- /.box-footer -->
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<script src="/plugins/chart/echarts.js"></script>
<script src="/js/detailedData.js?v=0.0.1"></script>
</body>
</html>
