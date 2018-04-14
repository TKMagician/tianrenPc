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
    <link rel="stylesheet" href="/css/statisticsData.css?v=0.0.1">
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <jsp:include page="header.jsp" flush="true"></jsp:include>
    <jsp:include page="leftMenu.jsp" flush="true"></jsp:include>
    <div class="content-wrapper">
        <section class="content container-fluid">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-aqua"><i class="fa fa-envelope-o"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">总效益</span>
                            <span class="info-box-number">10万</span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- ./col -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-aqua"><i class="fa fa-envelope-o"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">产电效益</span>
                            <span class="info-box-number">5万</span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-aqua"><i class="fa fa-envelope-o"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">产气效益</span>
                            <span class="info-box-number">5万</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-aqua"><i class="fa fa-envelope-o"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">能耗支出</span>
                            <span class="info-box-number">4万</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">效益统计报告</h3>
                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                    <i class="fa fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-9" id="benefitChart" style="height:250px;">
                                </div>
                                <div class="col-md-3 benefitReport">
                                    <p class="text-center">
                                        <strong>今日详细报告</strong>
                                    </p>
                                    <ul class="products-list product-list-in-box">
                                        <li class="item">
                                            <div class="product-img">
                                                <img src="/images/操作_蒸汽.png" alt="Product Image">
                                            </div>
                                            <div class="product-info">
                                                <a href="javascript:void(0)" class="product-title">
                                                    产气效益
                                                    <span class="label label-warning pull-right">10万元</span>
                                                </a>
                                                <span class="product-description">
                                                    产气250立方米，同比增长10%
                                                </span>
                                            </div>
                                        </li>
                                        <li class="item">
                                            <div class="product-img">
                                                <img src="/images/闪电.png" alt="Product Image">
                                            </div>
                                            <div class="product-info">
                                                <a href="javascript:void(0)" class="product-title">
                                                    产电效益
                                                    <span class="label label-warning pull-right">3万元</span>
                                                </a>
                                                <span class="product-description">
                                                    发电2500度，同比下降5%
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
                                                    <span class="label label-warning pull-right">13万元</span>
                                                </a>
                                                <span class="product-description">
                                                    其中发电效益3W，产气效益10W
                                                </span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="box-footer">
                            <!--
                            <div class="row">
                                <div class="col-sm-3 col-xs-6">
                                    <div class="description-block border-right">
                                        <span class="description-percentage text-red"><i class="fa fa-caret-up"></i> 17%</span>
                                        <h5 class="description-header">50</h5>
                                        <span class="description-text">电耗</span>
                                    </div>
                                </div>
                                <div class="col-sm-3 col-xs-6">
                                    <div class="description-block border-right">
                                <span class="description-percentage text-yellow"><i
                                        class="fa fa-caret-left"></i> 0%</span>
                                        <h5 class="description-header">100</h5>
                                        <span class="description-text">水耗</span>
                                    </div>
                                </div>
                                <div class="col-sm-3 col-xs-6">
                                    <div class="description-block border-right">
                                        <span class="description-percentage text-red"><i class="fa fa-caret-up"></i> 20%</span>
                                        <h5 class="description-header">100</h5>
                                        <span class="description-text">热耗</span>
                                    </div>
                                </div>
                                <div class="col-sm-3 col-xs-6">
                                    <div class="description-block">
                                <span class="description-percentage text-green"><i
                                        class="fa fa-caret-down"></i> 18%</span>
                                        <h5 class="description-header">1200</h5>
                                        <span class="description-text">总能耗</span>
                                    </div>
                                </div>
                            </div>
                            -->
                            <div class="footerBox" >
                                <a href="../../pages/mypage/气柜保存页面.html"class="btn btn-sm btn-default btn-flat pull-left">详细数据列表</a>
                                <span class="btn pull-right">数据日期：2018-04-10 22:33</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">统计报告</h3>
                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                    <i class="fa fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-9" id="expenditureChart" style="height:350px;">
                                </div>
                                <div class="col-md-3 expenditureReport">
                                    <p class="text-center">
                                        <strong>今日详细报告</strong>
                                    </p>
                                    <ul class="products-list product-list-in-box">
                                        <li class="item">
                                            <div class="product-img">
                                                <img src="/images/操作_蒸汽.png" alt="Product Image">
                                            </div>
                                            <div class="product-info">
                                                <a href="javascript:void(0)" class="product-title">
                                                    耗水总价
                                                    <span class="label label-warning pull-right">10万元</span>
                                                </a>
                                                <span class="product-description">
                                                    产气250立方米，同比增长10%
                                                </span>
                                            </div>
                                        </li>
                                        <li class="item">
                                            <div class="product-img">
                                                <img src="/images/闪电.png" alt="Product Image">
                                            </div>
                                            <div class="product-info">
                                                <a href="javascript:void(0)" class="product-title">
                                                    耗电总价
                                                    <span class="label label-warning pull-right">3万元</span>
                                                </a>
                                                <span class="product-description">
                                                    发电2500度，同比下降5%
                                                </span>
                                            </div>
                                        </li>
                                        <li class="item">
                                            <div class="product-img">
                                                <img src="/images/效益.png" alt="Product Image">
                                            </div>
                                            <div class="product-info">
                                                <a href="javascript:void(0)" class="product-title">
                                                    耗热总价
                                                    <span class="label label-warning pull-right">13万元</span>
                                                </a>
                                                <span class="product-description">
                                                    其中发电效益3W，产气效益10W
                                                </span>
                                            </div>
                                        </li>
                                        <li class="item">
                                            <div class="product-img">
                                                <img src="/images/效益.png" alt="Product Image">
                                            </div>
                                            <div class="product-info">
                                                <a href="javascript:void(0)" class="product-title">
                                                    能耗总价
                                                    <span class="label label-warning pull-right">13万元</span>
                                                </a>
                                                <span class="product-description">
                                                    其中发电效益3W，产气效益10W
                                                </span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="box-footer">
                            <!--
                            <div class="row">
                                <div class="col-sm-3 col-xs-6">
                                    <div class="description-block border-right">
                                        <span class="description-percentage text-red"><i class="fa fa-caret-up"></i> 17%</span>
                                        <h5 class="description-header">50</h5>
                                        <span class="description-text">电耗</span>
                                    </div>
                                </div>
                                <div class="col-sm-3 col-xs-6">
                                    <div class="description-block border-right">
                                <span class="description-percentage text-yellow"><i
                                        class="fa fa-caret-left"></i> 0%</span>
                                        <h5 class="description-header">100</h5>
                                        <span class="description-text">水耗</span>
                                    </div>
                                </div>
                                <div class="col-sm-3 col-xs-6">
                                    <div class="description-block border-right">
                                        <span class="description-percentage text-red"><i class="fa fa-caret-up"></i> 20%</span>
                                        <h5 class="description-header">100</h5>
                                        <span class="description-text">热耗</span>
                                    </div>
                                </div>
                                <div class="col-sm-3 col-xs-6">
                                    <div class="description-block">
                                <span class="description-percentage text-green"><i
                                        class="fa fa-caret-down"></i> 18%</span>
                                        <h5 class="description-header">1200</h5>
                                        <span class="description-text">总能耗</span>
                                    </div>
                                </div>
                            </div>
                            -->
                            <div class="footerBox" >
                                <a href="../../pages/mypage/气柜保存页面.html"class="btn btn-sm btn-default btn-flat pull-left">详细数据列表</a>
                                <span class="btn pull-right">数据日期：2018-04-10 22:33</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<script src="/plugins/chart/echarts.js"></script>
<script src="/js/statisticsData.js?v=0.1.2"></script>
</body>
</html>
