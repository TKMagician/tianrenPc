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
    <title>天人环境管理</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/bower_components/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="/dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="/dist/css/skins/_all-skins.min.css">
<body class="hold-transition skin-blue sidebar-mini">
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <div class="user-panel">
            <div class="pull-left image">
                <img src="/images/user2-160x160.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
                <p>Ray Simth</p>
                <!-- Status -->
                <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
            </div>
        </div>
        <form class="sidebar-form">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="查找..." />
                <span class="input-group-btn">
                            <button type="submit" name="search" id="search-btn" class="btn btn-flat">
                                <i class="fa fa-search"></i>
                            </button>
                        </span>
            </div>
        </form>
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">导航</li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-line-chart"></i> <span>经营数据</span>
                    <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="/user/statisticsData"><i class="fa fa-circle-o"></i> 统计数据</a></li>
                    <li><a href="/user/detailedData"><i class="fa fa-circle-o"></i> 当前数据</a></li>
                </ul>
            </li>
            <!--收运-->
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-recycle"></i>
                    <span>收运</span>
                    <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="#" data-addtab="general" data-target="#MasterTabs" data-title="general" data-url="pages/UI/general.html"><i class="fa fa-circle-o"></i> 步骤1</a></li>
                    <li><a href="#" data-addtab="icons" data-target="#MasterTabs" data-title="icons" data-url="pages/UI/icons.html"><i class="fa fa-circle-o"></i> 步骤2</a></li>
                    <li><a href="#" data-addtab="buttons" data-target="#MasterTabs" data-title="buttons" data-url="pages/UI/buttons.html"><i class="fa fa-circle-o"></i> 步骤3</a></li>
                </ul>
            </li>
            <!--预处理-->
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-pie-chart"></i>
                    <span>预处理</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li>
                        <a href="/pages/pretreatmentEqu.jsp">
                            <i class="fa fa-circle-o"></i> 设备及数据
                        </a>
                    </li>
                    <li><a href="#" data-addtab="morris" data-target="#MasterTabs" data-title="处理记录" data-url="pages/charts/morris.html"><i class="fa fa-circle-o"></i> 处理记录</a></li>
                </ul>
            </li>
            <!--工艺-->
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-dashboard"></i> <span>智能工艺</span>
                    <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                </a>
                <ul class="treeview-menu">
                    <li class=""><a href="/pages/gasTank.jsp"><i class="fa fa-circle-o"></i> 智能气柜</a></li>
                    <li><a href="/pages/anaerobicTank.jsp"><i class="fa fa-circle-o"></i> 智能厌氧反应罐</a></li>
                    <li><a href="/pages/desulfurization.jsp"><i class="fa fa-circle-o"></i> 脱硫</a></li>
                    <li><a href="/pages/decarburization.jsp"><i class="fa fa-circle-o"></i> 脱碳</a></li>
                </ul>
            </li>
            <!--智慧能源-->
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-globe"></i>
                    <span>智慧能源</span>
                    <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                </a>
                <ul class="treeview-menu">
                    <li>
                        <a href="#" data-addtab="energyManagementAndData" data-target="#MasterTabs" data-title="智慧能源日志报表" data-url="pages/mypage/智慧能源.html">
                            <i class="fa fa-circle-o"></i> 日志报表
                        </a>
                    </li>
                    <li>
                        <a href="/pages/pretreatmentEqu.jsp">
                            <i class="fa fa-circle-o"></i> 设备及数据
                        </a>
                    </li>
                    <li><a href="#" data-addtab="morris" data-target="#MasterTabs" data-title="处理记录" data-url="pages/charts/morris.html"><i class="fa fa-circle-o"></i> 处理记录</a></li>
                </ul>
            </li>
            <!--安全防护-->
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-shield"></i>
                    <span>安全防护</span>
                    <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                </a>
                <ul class="treeview-menu">
                    <li>
                        <a href="#" data-addtab="energyManagementAndData" data-target="#MasterTabs" data-title="智慧能源日志报表" data-url="pages/mypage/智慧能源.html">
                            <i class="fa fa-circle-o"></i> 报警信息
                        </a>
                    </li>
                    <li>
                        <a href="#" data-addtab="energyManagementAndData" data-target="#MasterTabs" data-title="智慧能源设备及数据" data-url="pages/mypage/智慧能源.html">
                            <i class="fa fa-circle-o"></i> 实时监控
                        </a>
                    </li>
                    <li><a href="#" data-addtab="morris" data-target="#MasterTabs" data-title="处理记录" data-url="pages/charts/morris.html"><i class="fa fa-circle-o"></i> 处理记录</a></li>
                </ul>
            </li>
            <!--系统设置-->
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-gear"></i> <span>系统设置</span>
                    <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="#" data-addtab="fgeneral" data-target="#MasterTabs" data-title="fgeneral" data-url="pages/forms/general.html"><i class="fa fa-circle-o"></i> 用户管理</a></li>
                    <li><a href="#" data-addtab="advanced" data-target="#MasterTabs" data-title="advanced" data-url="pages/forms/advanced.html"><i class="fa fa-circle-o"></i> 权限管理</a></li>
                    <li><a href="#" data-addtab="editors" data-target="#MasterTabs" data-title="editors" data-url="pages/forms/editors.html"><i class="fa fa-circle-o"></i> 用户分组</a></li>
                </ul>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
<script src="/bower_components/jquery/dist/jquery.min.js"></script>
<script src="/bower_components/jquery-ui/jquery-ui.min.js"></script>
<script src="/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<script src="/dist/js/adminlte.min.js"></script>
<script src="/dist/js/pages/dashboard.js"></script>
</body>
</html>
