<%--
  Created by IntelliJ IDEA.
  User: 海神阁
  Date: 2019/12/26
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">

    <title> hAdmin- 主页</title>

    <meta name="keywords" content="">
    <meta name="description" content="">

    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->

    <link href="../../resources/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="../../resources/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="../../resources/css/animate.css" rel="stylesheet">
    <link href="../../resources/css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
<div id="wrapper">
    <!--左侧导航开始-->
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="nav-close"><i class="fa fa-times-circle"></i>
        </div>
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                                    <span class="block m-t-xs" style="font-size:20px;">
                                        <i class="fa fa-area-chart"></i>
                                        <strong class="font-bold">Exam</strong>
                                    </span>
                                </span>
                        </a>
                    </div>
                    <div class="logo-element">Exam
                    </div>
                </li>
                <li>
                    <a class="J_menuItem" href="index_v1.html">
                        <i class="fa fa-home"></i>
                        <span class="nav-label">主页</span>
                    </a>
                </li>

                <!--老师部分-->

                <li>
                    <a href="#">
                        <i class="fa fa-edit"></i>
                        <span class="nav-label">学生管理 </span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="J_menuItem" href="${pageContext.request.contextPath}/jumpController/studenttable">查看学生</a>
                        </li>

                    </ul>
                </li>

                <li>
                    <a href="#">
                        <i class="fa fa-edit"></i>
                        <span class="nav-label">题库管理 </span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="J_menuItem" href="words.html">查看题库</a>
                        </li>

                    </ul>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="J_menuItem" href="read_over.html">批改考题</a>
                        </li>

                    </ul>
                </li>

            </ul>
        </div>
    </nav>
    <!--左侧导航结束-->
    <!--右侧部分开始-->
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header"><a class="navbar-minimalize minimalize-styl-2 btn btn-info " href="#"><i class="fa fa-bars"></i> </a>
                    <form role="search" class="navbar-form-custom" method="post" action="search_results.html">
                        <div class="form-group">
                            <input type="text" placeholder="请输入您需要查找的内容 …" class="form-control" name="top-search" id="top-search">
                        </div>
                    </form>
                </div>
                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle count-info J_menuItem" data-toggle="dropdown" href="mannger.html">
                            <i class="fa fa-envelope">个人信息</i>
                        </a>
                    </li>
                </ul>

            </nav>
        </div>
        <div class="row J_mainContent" id="content-main">
            <iframe id="J_iframe" width="100%" height="100%" src="index_v1.html" frameborder="0" data-id="index_v1.html" seamless></iframe>
        </div>
    </div>

    <!--右侧部分结束-->
</div>

<!-- 全局js -->
<script src="../../resources/js/jquery.min.js?v=2.1.4"></script>
<script src="../../resources/js/bootstrap.min.js?v=3.3.6"></script>
<script src="../../resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../../resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="../../resources/js/plugins/layer/layer.min.js"></script>

<!-- 自定义js -->
<script src="../../resources/js/hAdmin.js?v=4.1.0"></script>
<script type="text/javascript" src="../../resources/js/index.js"></script>

<!-- 第三方插件 -->
<script src="../../resources/js/plugins/pace/pace.min.js"></script>

</body>
</html>
