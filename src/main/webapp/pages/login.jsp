<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/15 0015
  Time: 下午 3:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>
        X-admin v1.0
    </title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="/css/x-admin.css?v=0.1.3" media="all">
    <link rel="stylesheet" href="/lib/verifyBlock/css/verify.css" media="all">
    <link rel="stylesheet" href="/css/login.css?v=0.1.1" media="all">
</head>

<body style="background-color: #393D49">
<div class="x-box">
    <div class="x-top">
        <i class="layui-icon x-login-close">
            &#x1007;
        </i>
        <ul class="x-login-right">
            <li style="background-color: #F1C85F;" color="#F1C85F">
            </li>
            <li style="background-color: #EA569A;" color="#EA569A">
            </li>
            <li style="background-color: #393D49;" color="#393D49">
            </li>
        </ul>
    </div>
    <div class="x-mid">
        <div class="x-avtar">
            <img src="/images/logo.png" alt="">
        </div>
        <div class="input">
            <form class="layui-form" method="post">
                <div class="layui-form-item x-login-box">
                    <label for="username" class="layui-form-label">
                        <i class="layui-icon">&#xe612;</i>
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="username" name="username" required="" lay-verify="username"
                               autocomplete="off" placeholder="请输入用户名" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item x-login-box">
                    <label for="pass" class="layui-form-label">
                        <i class="layui-icon">&#xe628;</i>
                    </label>
                    <div class="layui-input-inline">
                        <input type="password" id="pass" name="pass" required="" lay-verify="pass"
                               autocomplete="off" placeholder="请输入密码" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item x-login-box">
                    <label for="pass" class="layui-form-label">
                        <i class="layui-icon">&#xe62e;</i>
                    </label>
                    <div class="layui-input-inline">
                        <div id="mpanel"></div>
                    </div>
                </div>
                <div class="layui-form-item" id="loginbtn">
                    <button  class="layui-btn" lay-filter="save" lay-submit="">
                        登 录
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
<p style="color:#fff;text-align: center;">Copyright © 2017.Company name All rights X-admin </p>
<script src="/lib/layui/layui.js" charset="utf-8"></script>
<script src="/js/jquery.min.js"></script>
<script src="/lib/verifyBlock/js/verify.js"></script>
<script src="/js/login.js"></script>
</body>

</html>