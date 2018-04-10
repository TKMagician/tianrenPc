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
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <title>天人·项目管理</title>
    <link href="/plugins/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/plugins/bootstrap-addtabs/bootstrap.addtabs.min.css" rel="stylesheet" />
    <link href="/plugins/layer/build/skin/default/layer.css" rel="stylesheet" />
    <link href="/plugins/toastr/toastr.min.css" rel="stylesheet" />
    <link href="/plugins/custombox/dist/custombox.min.css" rel="stylesheet" />
    <link href="/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="/plugins/Ionicons/css/ionicons.min.css" rel="stylesheet" />
    <link href="/plugins/animate/animate.min.css" rel="stylesheet" />
    <link href="/plugins/viewer/viewer.min.css" rel="stylesheet" />
    <link href="/plugins/adminLTE/dist/css/AdminLTE.min.css" rel="stylesheet" />
    <link href="/plugins/adminLTE/dist/css/skins/all-skins.css" rel="stylesheet" />
    <link href="/plugins/Sortable/sy.css" rel="stylesheet" />
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <!-- Main Header -->
    <header class="main-header">
        <!-- Logo -->
        <a href="index.html" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>G</b>TL</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg">天人·项目管理</span>
        </a>
        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- Messages: style can be found in dropdown.less-->
                    <li class="dropdown messages-menu">
                        <!-- Menu toggle button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 4 messages</li>
                            <li>
                                <!-- inner menu: contains the messages -->
                                <ul class="menu">
                                    <li>
                                        <!-- start message -->
                                        <a href="#">
                                            <div class="pull-left">
                                                <!-- User Image -->
                                                <img src="plugins/adminLTE/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
                                            </div>
                                            <!-- Message title and timestamp -->
                                            <h4>
                                                Support Team
                                                <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                            </h4>
                                            <!-- The message -->
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <!-- end message -->
                                </ul>
                                <!-- /.menu -->
                            </li>
                            <li class="footer"><a href="#" data-addtab="mailbox" data-target="#MasterTabs" data-title="用户邮箱" data-url="pages/mailbox/mailbox.html">See All Messages</a></li>
                        </ul>
                    </li>
                    <!-- /.messages-menu -->
                    <!-- Notifications Menu -->
                    <li class="dropdown notifications-menu">
                        <!-- Menu toggle button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-bell-o"></i>
                            <span class="label label-warning">10</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 10 notifications</li>
                            <li>
                                <!-- Inner Menu: contains the notifications -->
                                <ul class="menu">
                                    <li>
                                        <!-- start notification -->
                                        <a href="#">
                                            <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                        </a>
                                    </li>
                                    <!-- end notification -->
                                </ul>
                            </li>
                            <li class="footer"><a href="#">View all</a></li>
                        </ul>
                    </li>
                    <!-- Tasks Menu -->
                    <li class="dropdown tasks-menu">
                        <!-- Menu Toggle Button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-flag-o"></i>
                            <span class="label label-danger">9</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 9 tasks</li>
                            <li>
                                <!-- Inner menu: contains the tasks -->
                                <ul class="menu">
                                    <li>
                                        <!-- Task item -->
                                        <a href="#">
                                            <!-- Task title and progress text -->
                                            <h3>
                                                Design some buttons
                                                <small class="pull-right">20%</small>
                                            </h3>
                                            <!-- The progress bar -->
                                            <div class="progress xs">
                                                <!-- Change the css width attribute to simulate progress -->
                                                <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar"
                                                     aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                    <span class="sr-only">20% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <!-- end task item -->
                                </ul>
                            </li>
                            <li class="footer">
                                <a href="#">View all tasks</a>
                            </li>
                        </ul>
                    </li>
                    <!-- User Account Menu -->
                    <li class="dropdown user user-menu">
                        <!-- Menu Toggle Button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <!-- The user image in the navbar-->
                            <img src="plugins/adminLTE/dist/img/user2-160x160.jpg" class="user-image" alt="User Image" />
                            <!-- hidden-xs hides the username on small devices so only the image appears. -->
                            <span class="hidden-xs">Ray</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- The user image in the menu -->
                            <li class="user-header">
                                <img src="plugins/adminLTE/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                <p>
                                    Ray Simth
                                    <small>Web Developer</small>
                                </p>
                            </li>
                            <!-- ./ Menu Body -->
                            <li class="user-body no-padding">
                                <ul class="nav nav-stacked">
                                    <li><a href="#">Projects <span class="pull-right badge bg-blue">31</span></a></li>
                                    <li><a href="#">Tasks <span class="pull-right badge bg-aqua">5</span></a></li>
                                    <li><a href="#">Completed Projects <span class="pull-right badge bg-green">12</span></a></li>
                                    <li><a href="#">Followers <span class="pull-right badge bg-red">842</span></a></li>
                                </ul>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <div class="btn-group">
                                        <a href="#" class="btn btn-default btn-flat" data-toggle="tooltip" data-placement="top" title="" data-original-title="User Profile" data-addtab="UserProfile" data-target="#MasterTabs" data-title="个人资料" data-url="pages/examples/profile.html">个人资料</a>
                                        <a href="#" class="btn btn-default btn-flat" data-toggle="tooltip" data-placement="top" title="" data-original-title="Change User Photo" data-addtab="UserPhoto" data-target="#MasterTabs" data-title="修改头像" data-url="pages/User/ChangePhoto.html">
                                            <i class="fa fa-photo"></i>
                                        </a>
                                        <a href="#" class="btn btn-default btn-flat" data-toggle="tooltip" data-placement="top" title="" data-original-title="Change User Password">
                                            <i class="fa fa-key"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="btn btn-default btn-flat">注销</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <!-- Control Sidebar Toggle Button -->
                    <li>
                        <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel (optional) -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="plugins/adminLTE/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
                </div>
                <div class="pull-left info">
                    <p>Ray Simth</p>
                    <!-- Status -->
                    <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
                </div>
            </div>
            <!-- search form (Optional) -->
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
            <!-- /.search form -->
            <!-- Sidebar Menu -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header">导航</li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-line-chart"></i> <span>经营数据仓</span>
                        <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="#" data-addtab="statisticsWarehouse" data-target="#MasterTabs" data-title="统计数据" data-url="pages/mypage/统计数据.html"><i class="fa fa-circle-o"></i> 统计数据</a></li>
                        <li><a href="#" data-addtab="dataWarehouse" data-target="#MasterTabs" data-title="详细数据" data-url="pages/mypage/详细数据仓.html"><i class="fa fa-circle-o"></i> 当前数据</a></li>
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
                            <a href="#" data-addtab="pretreatmentManagementAndData" data-target="#MasterTabs" data-title="预处理设备及数据" data-url="pages/tree/Tree-with-table.html">
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
                        <li class=""><a href="#" data-addtab="smartGasCabinet" data-target="#MasterTabs" data-title="智能气柜" data-url="/user/login"><i class="fa fa-circle-o"></i> 智能气柜</a></li>
                        <li><a href="#" data-addtab="anaerobicTank" data-target="#MasterTabs" data-title="智能厌氧反应罐" data-url="pages/mypage/厌氧罐新.html"><i class="fa fa-circle-o"></i> 智能厌氧反应罐</a></li>
                        <li><a href="#" data-addtab="desulfurization" data-target="#MasterTabs" data-title="脱硫" data-url="pages/dashboard2.html"><i class="fa fa-circle-o"></i> 脱硫</a></li>
                        <li><a href="#" data-addtab="decarburization" data-target="#MasterTabs" data-title="脱碳" data-url="pages/dashboard2.html"><i class="fa fa-circle-o"></i> 脱碳</a></li>
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
                            <a href="#" data-addtab="energyManagementAndData" data-target="#MasterTabs" data-title="智慧能源设备及数据" data-url="pages/mypage/智慧能源.html">
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
            <!-- /.sidebar-menu -->

            <div class="sidebar-footer hidden-small fadeInLeft animated">
                <a data-toggle="tooltip" data-placement="top" title="" data-original-title="Information" data-addtab="aboutus" data-target="#MasterTabs" data-title="关于我们" data-url="pages/User/Profile.html">
                    <span class="glyphicon glyphicon-question-sign" aria-hidden="true"></span>
                </a>
                <a id="fullscreen" data-toggle="tooltip" data-placement="top" title="" data-original-title="FullScreen">
                    <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                </a>
                <a id="lockpage" data-toggle="tooltip" data-placement="top" title="" data-original-title="Lock">
                    <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                </a>
                <a data-toggle="tooltip" data-placement="top" title="" href="#" data-original-title="Logout">
                    <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                </a>
            </div>
        </section>
        <!-- /.sidebar -->
    </aside>
    <div class="content-wrapper">
        <!-- Main content -->
        <section class="content container-fluid" style="padding:0px">
            <ul class="nav nav-tabs" id="MasterTabs" role="tablist">
                <li class="nav-tabs-header active" role="presentation">
                    <a aria-controls="home" data-toggle="tab" href="#home" role="tab">
                        <i class="fa fa-home"></i> Home
                    </a>
                </li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
                <div class="tab-pane active" id="home" role="tabpanel">
                    <section class="content container-fluid"  id="multi">
                        <div class="row companyProfile">
                            <div class="multiTitleName">公司简介</div>
                            <p class="col-lg-11">青岛天人环境股份有限公司成立于1999年，是一家专业从事生物质能开发、环境保护和新能源项目投资的国
                                家级高新技术企业，具有甲级工程设计资质和甲级工程咨询资质，通过了ISO9001/14001质量、环境管理双
                                体系认证。目前已承担国家级科研课题3项，拥有专利技术和专有技术50多项，自主开发生物质能和环保设
                                备20多项，完成可研设计600多项，建设大中型工程350余项。公司核心设备是采用了电泳和喷涂双重防腐工
                                艺的ECPC拼装罐和专利产品柔性气柜。
                            </p>
                        </div>
                        <div class="row multiTitle">

                            <div class="multiTitleName">功能定制区</div>
                            <!--数据仓-->
                            <div class="col-lg-3 col-xs-6 multiItem">
                                <!-- small box -->
                                <a href="#" class="small-box bg-aqua" style="display: block">
                                    <div class="inner">
                                        <h4><b>经营数据仓</b></h4>
                                        <p>查看当前的经济数据<br>及经济指标</p>
                                    </div>
                                    <div class="icon">
                                        <i class="fa fa-line-chart"></i>
                                    </div>
                                    <span class="small-box-footer">
                                            更多信息<i class="fa fa-arrow-circle-right"></i>
                                    </span>
                                </a>
                            </div>
                            <!--收运-->
                            <div class="col-lg-3 col-xs-6 multiItem">
                                <!-- small box -->
                                <a href="#" class="small-box bg-green " style="display: block;">
                                    <div class="inner">
                                        <h4><b>收运</b></h4>
                                        <p>收发运输，快速处理<br>低耗能</p>
                                    </div>
                                    <div class="icon">
                                        <i class="fa fa-recycle"></i>
                                    </div>
                                    <span class="small-box-footer">
                                    更多信息 <i class="fa fa-arrow-circle-right"></i>
                                </span>
                                </a>
                            </div>
                            <!--预处理-->
                            <div class="col-lg-3 col-xs-6 multiItem">
                                <!-- small box -->
                                <a href="#" class="small-box bg-orange" style="display: block;">
                                    <div class="inner">
                                        <h4><b>预处理</b></h4>
                                        <p>预处理技术，不用人工操作<br>很厉害</p>
                                    </div>
                                    <div class="icon">
                                        <i class="fa fa-pie-chart"></i>
                                    </div>
                                    <span class="small-box-footer">
                                        更多信息 <i class="fa fa-arrow-circle-right"></i>
                                    </span>
                                </a>
                            </div>
                            <!--智慧能源-->
                            <div class="col-lg-3 col-xs-6 multiItem">
                                <!-- small box -->
                                <a href="#"  data-addtab="energyManagementAndData" data-target="#MasterTabs" data-title="智慧能源设备及数据" data-url="pages/mypage/智慧能源.html" class="small-box bg-blue-active" style="display: block">
                                    <div class="inner">
                                        <h4><b>智慧能源</b></h4>
                                        <p>使用智慧能源实时监控<br>低耗能</p>
                                    </div>
                                    <div class="icon">
                                        <i class="fa fa-globe"></i>
                                    </div>
                                    <span class="small-box-footer">
                                        更多信息 <i class="fa fa-arrow-circle-right"></i>
                                    </span>
                                </a>
                            </div>
                            <!--工艺-->
                            <!--气柜-->
                            <div class="col-lg-3 col-xs-6 multiItem">
                                <!-- small box -->
                                <a href="#" class="small-box bg-light-blue-active" style="display: block">
                                    <div class="inner">
                                        <h4><b>智能气柜</b></h4>
                                        <p>可调节变控，便于观察的<br>无敌的气柜</p>
                                    </div>
                                    <div class="icon">
                                        <i class="fa fa-skyatlas"></i>
                                    </div>
                                    <span class="small-box-footer">
                                            更多信息 <i class="fa fa-arrow-circle-right"></i>
                                        </span>
                                </a>
                            </div>
                            <!--厌氧罐-->
                            <div class="col-lg-3 col-xs-6 multiItem">
                                <!-- small box -->
                                <a href="#" class="small-box bg-olive-active" style="display: block;">
                                    <div class="inner">
                                        <h4><b>智能厌氧反应罐</b></h4>
                                        <p>包含塔顶、塔身、内池的<br>高端反应罐</p>
                                    </div>
                                    <div class="icon">
                                        <i class="fa fa-google-plus"></i>
                                    </div>
                                    <span class="small-box-footer">
                                        更多信息 <i class="fa fa-arrow-circle-right"></i>
                                    </span>
                                </a>
                            </div>
                            <!--脱硫脱碳-->
                            <div class="col-lg-3 col-xs-6 multiItem">
                                <!-- small box -->
                                <a href="#" class="small-box bg-yellow-active" style="display: block">
                                    <div class="inner">
                                        <h4><b>脱硫</b></h4>
                                        <p>脱硫安稳安全环保 <br>低耗能</p>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-stats-bars"></i>
                                    </div>
                                    <span class="small-box-footer">
                                    更多信息 <i class="fa fa-arrow-circle-right"></i>
                                </span>
                                </a>
                            </div>
                            <div class="col-lg-3 col-xs-6 multiItem">
                                <!-- small box -->
                                <a href="#" class="small-box" style="display: block;background-color: #4c4c4c;color: #fff;">
                                    <div class="inner">
                                        <h4><b>脱碳</b></h4>
                                        <p>脱碳安稳安全环保<br>低耗能</p>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-stats-bars"></i>
                                    </div>
                                    <span class="small-box-footer">
                                    更多信息 <i class="fa fa-arrow-circle-right"></i>
                                </span>
                                </a>
                            </div>
                            <!--安防-->
                            <div class="col-lg-3 col-xs-6 multiItem">
                                <!-- small box -->
                                <a href="#" class="small-box bg-purple-active" style="display: block">
                                    <div class="inner">
                                        <h4><b>安全防护</b></h4>
                                        <p>最稳的安全防护系统<br>值得拥有</p>
                                    </div>
                                    <div class="icon">
                                        <i class="fa fa-shield"></i>
                                    </div>
                                    <span class="small-box-footer">
                                    更多信息 <i class="fa fa-arrow-circle-right"></i>
                                </span>
                                </a>
                            </div>
                            <!--设置-->
                            <div class="col-lg-3 col-xs-6 multiItem">
                                <!-- small box -->
                                <a href="#" class="small-box bg-teal-active" style="display: block">
                                    <div class="inner">
                                        <h4><b>系统设置</b></h4>
                                        <p>更改各种配置<br>低耗能</p>
                                    </div>
                                    <div class="icon">
                                        <i class="fa fa-gear"></i>
                                    </div>
                                    <span class="small-box-footer">
                                                更多信息 <i class="fa fa-arrow-circle-right"></i>
                                            </span>
                                </a>
                            </div>
                            <div class="col-lg-3 col-xs-6 multiItem">
                                <!-- small box -->
                                <a href="#" class="small-box bg-teal-active" style="display: block">
                                    <div class="inner">
                                        <h4><b>智能地图</b></h4>
                                        <p>高端地图<br>时刻掌握</p>
                                    </div>
                                    <div class="icon">
                                        <i class="fa fa-gear"></i>
                                    </div>
                                    <span class="small-box-footer">
                                                更多信息 <i class="fa fa-arrow-circle-right"></i>
                                            </span>
                                </a>
                            </div>
                            <!-- ./col -->
                        </div>
                        <div class="row multiTitle baseData" style="min-height: 80px;min-width: 100%;">
                            <!--数据仓-->
                            <div class="multiTitleName">功能暂存区</div>
                            <div class="col-lg-3 col-xs-6 multiItem">
                                <!-- small box -->
                                <a href="#" class="small-box bg-aqua" style="display: block">
                                    <div class="inner">
                                        <h4><b>经营数据仓</b></h4>
                                        <p>查看当前的经济数据<br>及经济指标</p>
                                    </div>
                                    <div class="icon">
                                        <i class="fa fa-line-chart"></i>
                                    </div>
                                    <span class="small-box-footer">
                                            更多信息<i class="fa fa-arrow-circle-right"></i>
                                        </span>
                                </a>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </section>
        <!-- /.content -->
    </div>
    <footer class="main-footer">
        <!-- To the right -->
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0.0.1
        </div>
        <!-- Default to the left -->
        <strong>Copyright © 2014-2016 .</strong> All rights reserved.
    </footer>
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- Home tab content -->
            <div class="tab-pane active" id="control-sidebar-home-tab">
                <h3 class="control-sidebar-heading">Recent Activity</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:;">
                            <i class="menu-icon fa fa-birthday-cake bg-red"></i>
                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>
                                <p>Will be 23 on April 24th</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->
                <h3 class="control-sidebar-heading">Tasks Progress</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:;">
                            <h4 class="control-sidebar-subheading">
                                Custom Template Design
                                <span class="pull-right-container">
                                        <span class="label label-danger pull-right">70%</span>
                                    </span>
                            </h4>
                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->
            </div>
            <!-- /.tab-pane -->
            <!-- Settings tab content -->
            <div class="tab-pane" id="control-sidebar-settings-tab">
                <h3 class="control-sidebar-heading">样式选择</h3>
                <ul class="list-unstyled clearfix" id="listthemes">
                    <li style="float:left; width: 33.33333%; padding: 5px;">
                        <a href="javascript:void(0)" data-skin="skin-blue" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                            <div><span style="display:block; width: 20%; float: left; height: 7px; background: #367fa9"></span><span class="bg-light-blue" style="display:block; width: 80%; float: left; height: 7px;"></span></div>
                            <div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div>
                        </a>
                        <p class="text-center no-margin">蓝色</p>
                    </li>
                    <!-- ./ 蓝色-->
                    <li style="float:left; width: 33.33333%; padding: 5px;">
                        <a href="javascript:void(0)" data-skin="skin-black" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                            <div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix"><span style="display:block; width: 20%; float: left; height: 7px; background: #fefefe"></span><span style="display:block; width: 80%; float: left; height: 7px; background: #fefefe"></span></div>
                            <div><span style="display:block; width: 20%; float: left; height: 20px; background: #222"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div>
                        </a>
                        <p class="text-center no-margin">黑色</p>
                    </li>
                    <!--/. 黑色-->
                    <li style="float:left; width: 33.33333%; padding: 5px;">
                        <a href="javascript:void(0)" data-skin="skin-purple" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                            <div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span><span class="bg-purple" style="display:block; width: 80%; float: left; height: 7px;"></span></div>
                            <div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div>
                        </a>
                        <p class="text-center no-margin">紫色</p>
                    </li>
                    <!-- /. 紫色-->
                    <li style="float:left; width: 33.33333%; padding: 5px;">
                        <a href="javascript:void(0)" data-skin="skin-green" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                            <div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span><span class="bg-green" style="display:block; width: 80%; float: left; height: 7px;"></span></div>
                            <div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div>
                        </a><p class="text-center no-margin">绿色</p>
                    </li>
                    <!-- /. 绿色 -->
                    <li style="float:left; width: 33.33333%; padding: 5px;">
                        <a href="javascript:void(0)" data-skin="skin-red" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                            <div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span><span class="bg-red" style="display:block; width: 80%; float: left; height: 7px;"></span></div>
                            <div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div>
                        </a>
                        <p class="text-center no-margin">红色</p>
                    </li>
                    <!-- /. 红色 -->
                    <li style="float:left; width: 33.33333%; padding: 5px;">
                        <a href="javascript:void(0)" data-skin="skin-yellow" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                            <div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span><span class="bg-yellow" style="display:block; width: 80%; float: left; height: 7px;"></span></div>
                            <div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div>
                        </a>
                        <p class="text-center no-margin">黄色</p>
                    </li>
                    <!-- /. 黄色 -->
                    <li style="float:left; width: 33.33333%; padding: 5px;">
                        <a href="javascript:void(0)" data-skin="skin-blue-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                            <div><span style="display:block; width: 20%; float: left; height: 7px; background: #367fa9"></span><span class="bg-light-blue" style="display:block; width: 80%; float: left; height: 7px;"></span></div>
                            <div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div>
                        </a>
                        <p class="text-center no-margin" style="font-size: 12px">淡蓝色</p>
                    </li>
                    <!-- /. 淡蓝色 -->
                    <li style="float:left; width: 33.33333%; padding: 5px;">
                        <a href="javascript:void(0)" data-skin="skin-black-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                            <div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix"><span style="display:block; width: 20%; float: left; height: 7px; background: #fefefe"></span><span style="display:block; width: 80%; float: left; height: 7px; background: #fefefe"></span></div>
                            <div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div>
                        </a><p class="text-center no-margin" style="font-size: 12px">淡黑色</p>
                    </li>
                    <!-- /. 淡黑色 -->
                    <li style="float:left; width: 33.33333%; padding: 5px;">
                        <a href="javascript:void(0)" data-skin="skin-purple-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                            <div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span><span class="bg-purple" style="display:block; width: 80%; float: left; height: 7px;"></span></div>
                            <div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div>
                        </a><p class="text-center no-margin" style="font-size: 12px">淡紫色</p>
                    </li>
                    <!-- /. 淡紫色 -->
                    <li style="float:left; width: 33.33333%; padding: 5px;">
                        <a href="javascript:void(0)" data-skin="skin-green-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                            <div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span><span class="bg-green" style="display:block; width: 80%; float: left; height: 7px;"></span></div>
                            <div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div>
                        </a><p class="text-center no-margin" style="font-size: 12px">淡绿色</p>
                    </li>
                    <!-- /. 淡绿色 -->
                    <li style="float:left; width: 33.33333%; padding: 5px;">
                        <a href="javascript:void(0)" data-skin="skin-red-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                            <div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span><span class="bg-red" style="display:block; width: 80%; float: left; height: 7px;"></span></div>
                            <div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div>
                        </a><p class="text-center no-margin" style="font-size: 12px">淡红色</p>
                    </li>
                    <!-- /. 淡红色 -->
                    <li style="float:left; width: 33.33333%; padding: 5px;">
                        <a href="javascript:void(0)" data-skin="skin-yellow-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                            <div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span><span class="bg-yellow" style="display:block; width: 80%; float: left; height: 7px;"></span></div>
                            <div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7"></span></div>
                        </a><p class="text-center no-margin" style="font-size: 12px">淡黄色</p>
                    </li>
                    <!-- /. 淡黄色 -->
                </ul>
                <!-- /. 样式变更-->
                <h3 class="control-sidebar-heading">布局选项</h3>
                <div class="form-group">
                    <label class="control-sidebar-subheading">
                        <input type="checkbox" data-layout="fixed" class="pull-right" />
                        固定布局
                    </label>
                </div>
                <div class="form-group">
                    <label class="control-sidebar-subheading">
                        <input type="checkbox" data-layout="layout-boxed" class="pull-right" />
                        箱式布局
                    </label>
                </div>
                <div class="form-group">
                    <label class="control-sidebar-subheading">
                        <input type="checkbox" data-layout="sidebar-collapse" class="pull-right" />
                        侧边栏切换
                    </label>
                </div>
                <div class="form-group">
                    <label class="control-sidebar-subheading">
                        <input type="checkbox" data-controlsidebar="control-sidebar-open" class="pull-right" />
                        右边栏固定显示
                    </label>
                </div>
                <div class="form-group">
                    <label class="control-sidebar-subheading">
                        <input type="checkbox" data-sidebarskin="toggle" class="pull-right" />
                        右边栏背景切换
                    </label>
                </div>
            </div>
            <!-- /.tab-pane -->
        </div>
    </aside>
    <div class="control-sidebar-bg"></div>

    <div class="box small-chat-box direct-chat direct-chat-primary  fadeInRight animated">
        <div class="box-header with-border">
            <h3 class="box-title" id="chatTitle">Direct Chat</h3>
            <div class="box-tools pull-right">
                <button type="button" id="btn_showContacts" class="btn btn-box-tool" data-toggle="tooltip" title="" data-widget="chat-pane-toggle" data-original-title="Contacts">
                    <i class="fa fa-comments"></i>
                </button>
            </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body" id="chatBody">
            <!-- Conversations are loaded here -->
            <div class="direct-chat-messages" id="listmsg">
                <div class="direct-chat-msg">
                    <div class="direct-chat-info clearfix">
                        <span class="direct-chat-name pull-left">Ray Simth</span>
                        <span class="direct-chat-timestamp pull-right">23 Jan 2:00 pm</span>
                    </div>
                    <!-- /.direct-chat-info -->
                    <img class="direct-chat-img" src="plugins/adminLTE/dist/img/user2-160x160.jpg" alt="Message User Image"><!-- /.direct-chat-img -->
                    <div class="direct-chat-text">
                        早上好
                    </div>
                    <!-- /.direct-chat-text -->
                </div>
                <!-- /.direct-chat-msg -->
                <!-- Message to the right -->
                <div class="direct-chat-msg right">
                    <div class="direct-chat-info clearfix">
                        <span class="direct-chat-name pull-right">Sarah Bullock</span>
                        <span class="direct-chat-timestamp pull-left">23 Jan 2:05 pm</span>
                    </div>
                    <!-- /.direct-chat-info -->
                    <img class="direct-chat-img" src="plugins/adminLTE/dist/img/user3-128x128.jpg" alt="Message User Image"><!-- /.direct-chat-img -->
                    <div class="direct-chat-text">
                        早上好!
                    </div>
                    <!-- /.direct-chat-text -->
                </div>
            </div>
            <!--/.direct-chat-messages-->
            <!-- Contacts are loaded here -->
            <div class="direct-chat-contacts">
                <ul class="contacts-list">
                    <li>
                        <a href="javascript:;" data-widget="chat-pane-toggle">
                            <img src="plugins/adminLTE/dist/img/user1-128x128.jpg" class="contacts-list-img" />
                            <div class="contacts-list-info">
                                    <span class="contacts-list-name">
                                        Polo
                                        <small class="contacts-list-date pull-right"><i class="fa fa-circle text-danger"></i> 离线</small>
                                    </span>
                                <span class="contacts-list-msg">Polo@gmail.com</span>
                            </div>
                            <!-- /.contacts-list-info -->
                        </a>
                    </li>
                </ul>
                <!-- /.contatcts-list -->
            </div>
            <!-- /.direct-chat-pane -->
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
            <form action="#" method="post">
                <div class="input-group">
                    <input type="text" id="message" name="message" placeholder="输入信息 ..." class="form-control">
                    <span class="input-group-btn">
                            <button type="button" id="sendmessage" class="btn btn-primary btn-flat">发送</button>
                        </span>
                </div>
            </form>
        </div>
        <!-- /.box-footer-->
    </div>
    <div class="chat-area">
        <span class="badge badge-warning pull-right msgCount">0</span>
        <a class="open-small-chat">
            <i class="fa fa-comments"></i>
        </a>
    </div>
    <!-- /. Chat-Area-->
</div>

<!-- ./wrapper -->
<div id="modal" class="hold-transition lockscreen" style="display:none">
    <div class="lockscreen-wrapper">
        <div class="lockscreen-logo">
            <a href="#"><b>Admin</b>GLT</a>
        </div>
        <div class="lockscreen-name">Ray Simth</div>
        <div class="lockscreen-item">
            <div class="lockscreen-image">
                <img src="plugins/adminLTE/dist/img/user2-160x160.jpg" />
            </div>
            <form class="lockscreen-credentials">
                <div class="input-group">
                    <input id="tbx_lock_password" type="password" class="form-control" placeholder="password" value="">

                    <div class="input-group-btn">
                        <button type="button" class="btn" data-toggle="tooltip" id="unLock" data-placement="top" title="" data-original-title="UnLock"><i class="fa fa-arrow-right text-muted"></i></button>
                    </div>
                </div>
            </form>
        </div>
        <div class="help-block text-center">
            输入密码解除锁定
        </div>
        <div class="lockscreen-footer text-center">
            Copyright &copy; 2014-2016
            All rights reserved
        </div>
    </div>
</div>
<!-- ./ 锁定屏幕 -->
<script src="/plugins/jquery/dist/jquery.js"></script>
<script src="/plugins/layer/build/layer.js"></script>
<script src="/plugins/toastr/toastr.min.js"></script>
<script src="/plugins/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/plugins/bootstrap-addtabs/bootstrap.addtabs.min.js"></script>
<script src="/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="/plugins/screenfull/dist/screenfull.min.js"></script>
<script src="/plugins/custombox/dist/custombox.min.js"></script>
<script src="/plugins/viewer/viewer.min.js"></script>
<script src="/plugins/adminLTE/dist/js/adminlte.min.js"></script>
<script src="/dist/gtl.min.js"></script>
<script src="/plugins/Sortable/Sortable.js"></script>
</body>
</html>
