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
                        <span><b><i class="icon fa fa-ban"></i> 警告!</b></span> &nbsp;&nbsp;&nbsp;&nbsp;气柜内膜压力过高
                    </div>
                </div>
            </div>
            <div class="row">
                <!--气柜显示模型图-->
                <div class="col-md-5">
                    <!-- /.info-box -->
                    <div class="box box-default">
                        <div class="box-header with-border">
                            <h3 class="box-title">湖州餐厨#1</h3>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                <img src="/images/gasTank.png" class="col-md-7" alt="">
                                <div class="col-md-5">
                                    <ul class="nav nav-pills nav-stacked changeChart">
                                        <c:forEach items="${dataConfig['gasTankNormal']}" var="configs">
                                            <li>
                                                <a href="#">
                                                        ${sensors[configs].nickName}
                                                    <c:choose>
                                                        <c:when test="${realTimeData[configs] < sensors[configs].suitableMaximum && realTimeData[configs] > sensors[configs].suitableMinimum}">
                                                            <span class="pull-right text-green">${realTimeData[configs]}vol%</span>
                                                        </c:when>
                                                        <c:when
                                                                test="${realTimeData[configs] > sensors[configs].highErrorValue && realTimeData[configs] < sensors[configs].lowErrorValue}">
                                                            <span class="pull-right text-red">${realTimeData[configs]}vol%</span>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <span class="pull-right text-yellow">${realTimeData[configs]}vol%</span>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </a>
                                            </li>
                                        </c:forEach>
                                        <li>
                                            <a href="#">设计容量<span class="pull-right"> ${gasTankRealTimeData.d35}m <sup>3</sup></span></a>
                                        </li>
                                        <!--
                                        <li>
                                            <a href="#" class="gasStorage">当前储气 <span class="pull-right text-green"> 1000m<sup>3</sup></span></a>
                                        </li>
                                        <li>
                                            <a href="#" class="intimalHeight">内膜高度 <span class="pull-right text-green"> ${gasTankRealTimeData.d29}m</span></a>
                                        </li>
                                        <li>
                                            <a href="#" class="endometrialPressure">内膜压力<span class="pull-right text-red"> ${gasTankRealTimeData.d34}kPa</span></a>
                                        </li>
                                        <li>
                                            <a href="#">运行状态<span class="pull-right text-red"> 异常</span></a>
                                        </li>
                                        -->
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="box-footer clearfix">
                            <div class="row">
                                <c:forEach items="${dataConfig['gasTankGas']}" var="configs">
                                    <div class="col-sm-3 col-xs-6">
                                        <div class="description-block border-right">
                                            <c:choose>
                                                <c:when test="${realTimeData[configs] < sensors[configs].suitableMaximum && realTimeData[configs] > sensors[configs].suitableMinimum}">
                                                    <span class="description-percentage text-green confirmBtn"><i class="fa fa-caret-down"></i>${realTimeData[configs]}</span>
                                                </c:when>
                                                <c:when
                                                        test="${realTimeData[configs] > sensors[configs].highErrorValue && realTimeData[configs] < sensors[configs].lowErrorValue}">
                                                    <span class="description-percentage text-red confirmBtn"><i class="fa fa-caret-up"></i>${realTimeData[configs]}</span>
                                                </c:when>
                                                <c:otherwise>
                                                    <span class="description-percentage text-yellow confirmBtn"><i class="fa fa-caret-left"></i>${realTimeData[configs]}</span>
                                                </c:otherwise>
                                            </c:choose>
                                            <h5 class="description-text">${sensors[configs].nickName}浓度</h5>
                                        </div>
                                    </div>
                                </c:forEach>
                                <!--
                                <div class="col-sm-3 col-xs-6">
                                    <div class="description-block border-right">
                                        <span class="description-percentage text-red"><i class="fa fa-caret-up"></i> ${gasTankRealTimeData.d31}vol%</span>
                                        <h5 class="description-text">CH<sub>4</sub>浓度</h5>
                                    </div>
                                </div>
                                <div class="col-sm-3 col-xs-6 oxygenConc">
                                    <div class="description-block border-right">
                                    <span class="description-percentage text-yellow">
                                        <i class="fa fa-caret-left"></i> ${gasTankRealTimeData.d32}vol%
                                    </span>
                                        <h5 class="description-text">O<sub>2</sub>浓度</h5>
                                    </div>
                                </div>
                                <div class="col-sm-3 col-xs-6 hydrogenSulfideConc">
                                    <div class="description-block border-right">
                                    <span class="description-percentage text-red">
                                        <i class="fa fa-caret-up"></i> ${gasTankRealTimeData.d33}ppm
                                    </span>
                                        <h5 class="description-text">H<sub>2</sub>S浓度</h5>
                                    </div>
                                </div>
                                <div class="col-sm-3 col-xs-6 carbonDioxideConc">
                                    <div class="description-block">
                                    <span class="description-percentage text-green">
                                        <i class="fa fa-caret-down"></i> ${gasTankRealTimeData.d34}vol%
                                    </span>
                                        <h5 class="description-text">CO<sub>2</sub>浓度</h5>
                                    </div>
                                </div>
                                -->
                            </div>
                            <div class="footerBox" style="margin-top: 20px;">
                                <a href="../../pages/mypage/气柜保存页面.html"class="btn btn-sm btn-default btn-flat pull-left ">详细数据列表</a>
                                <span class="btn pull-right">数据日期：${realTimeData['addFromatTime']}</span>
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
                                <button type="button" class="btn btn-default security" data-toggle="modal" data-target="#modal-default">
                                    效益报告
                                </button>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div style="width: 100%;height: 378px;">
                                <div class="input-group" style="width: 100%;height: 38px; ">
                                    <div class="input-group input-group-sm">
                                        <input type="text" class="form-control timePick" placeholder="请选择时间">
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-info btn-flat confirmBtn">确认</button>
                                        </span>
                                    </div>
                                </div>
                                <div id="showStatistics" style="width: 100%;height: 340px;"></div>
                            </div>
                            <div style="width: 100%;height: 378px;">
                                <div class="input-group" style="width: 100%;height: 38px; ">
                                    <div class="input-group input-group-sm">
                                        <input type="text" class="form-control timePick" placeholder="请选择时间">
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-info btn-flat confirmBtn">确认</button>
                                        </span>
                                    </div>
                                </div>
                                <div id="showStatistics" style="width: 100%;height: 340px;"></div>
                            </div>
                            <!--
                                <div id="showSecurity" style="width: 100%;height: 345px;display: none">
                                    <div class="col-sm-8" style="height: 100%;">
                                        <video width="100%"  height="300px" controls="controls">
                                            <source src="/images/vid.mp4" type="video/mp4" />
                                        </video>
                                    </div>
                                    <div class="col-sm-4" style="border-left: 1px solid #F4F4F4">
                                        <ul class="list-group">
                                            <li class="list-group-item">
                                                <div class="text-yellow">
                                                    <i class="fa  fa-exclamation-triangle"></i><span style="font-weight: bold;">警告</span>
                                                    <span class="pull-right">处理量过大</span>
                                                </div>
                                                <span>2017-03-04 12:44:55</span>
                                            </li>
                                            <li class="list-group-item">
                                                <div class="text-red">
                                                    <i class="fa fa-exclamation"></i><span style="font-weight: bold;">超高预警</span>
                                                    <span class="pull-right">甲烷浓度过高</span>
                                                </div>
                                                <span>2017-03-04 12:44:55</span>
                                            </li>
                                            <li class="list-group-item">
                                                <div class="text-yellow">
                                                    <i class="fa  fa-exclamation-triangle"></i><span style="font-weight: bold;">警告</span>
                                                    <span class="pull-right">内膜压力小</span>
                                                </div>
                                                <span>2017-03-04 12:44:55</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div id="showDisasterResistance" style="width: 100%;height: 345px;display: none">
                                <div class="col-sm-8" style="height: 100%;">
                                    <img width="100%" src="/images/wind.png"  height="300px"/>
                                </div>
                                <div class="col-sm-4" style="border-left: 1px solid #F4F4F4">
                                    <ul class="list-group">
                                        <li class="list-group-item">
                                            <div class="text-yellow" style="font-size: 25px;">
                                                <i class="fa  fa-exclamation-triangle"></i><span style="font-weight: bold;">警告</span>
                                            </div>
                                            <p>台风还有72小时登录该地区</p>
                                            <span>2017-03-04 12:44:55</span>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="text-green" style="font-size: 25px;">
                                                <i class="fa  fa-strikethrough"></i><span style="font-weight: bold;">策略</span>
                                            </div>
                                            <p>请在56小时内耗光气罐气体，进行防护网遮罩</p>
                                            <span>2017-03-04 12:44:55</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<script src="/plugins/chart/echarts.js"></script>
<script src="/js/gasTank.js?v=0.0.3"></script>
</body>
</html>
