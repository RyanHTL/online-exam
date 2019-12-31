<%@ page import="com.exam.demain.Student" %><%--
  Created by IntelliJ IDEA.
  User: 海神阁
  Date: 2019/12/31
  Time: 1:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="../../resources/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="../../resources/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <script src="../../resources/js/jquery.min.js"></script>
    <script type="text/javascript">
        $(function(){
            $(".btn").dropdown();
        });

        <% Student stu = (Student) request.getSession().getAttribute("loginuser");%>
    </script>
    <style>
        .shadow{
            box-shadow: gray 0px 0px 2px;
            display: inline;

            margin-top:20px;
            text-align: center;
            margin-left:27px;
        }
        .w{
            margin-top: 20px;
            margin-bottom: 20px;
            font-family: verdana, sans-serif;
            color: #000000;
            font-size: 15px;
            font-weight: bold;
            font-style: italic;
        }
    </style>
</head>
<body>
<!-- 导航栏-->
<div class="row">
    <div class="col-md-12 " style="height:80px;">

        <img src="../../resources/image/1.jpg" height="50px;" width="50px;"><small style="font-size: 20px;">在线考试</small>

        <div class="col-lg-4 " style="float: right;">
            <ul class="nav nav-pills nav-justified">
                <li><a href="${pageContext.request.contextPath}/jumpController/student_index" target="_self">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/jumpController/testresult" target="_self">考试记录</a></li>
                <li>
                    <div class="btn-group dropdown">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            个人中心<span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/jumpController/student_info">个人中心</a></li>

                            <li><a href="#">退出</a></li>
                        </ul>
                    </div>



                </li>
            </ul>
        </div>


    </div>
</div>
<div class="row" style="margin-top: 50px;">
    <div class="col-md-10 col-md-push-1">
        <div class="col-md-3 shadow" >
            <div class="row" style="height:50px;line-height: 50px; font-size: 20px;box-shadow: 0 1px 2px -1px gray;">个人信息</div>
            <div class="row" style="box-shadow: 0 1px 2px -1px gray;">
                <div style="height:100px;line-height: 100px;">
                    <img src="../../resources/image/1.jpg" height="100px" width="100px;" />
                </div>
                <div style="height:30px;line-height: 30px;text-align: center;font-size: 20px;">
                    <%=stu.getName()%>
                </div>
            </div>
            <div class="row" style="box-shadow: 0 1px 2px -1px gray;">
                <div style="margin-bottom: 15px;margin-top: 15px;">
                    <div style="height:25px;line-height: 25px;font-size: 20px;">账号：<small><%=stu.getAccount()%></small></div>
                    <div style="height:25px;line-height: 25px;font-size: 20px;">班级：<small><%=stu.getClassName()%>班</small></div>
                </div>
            </div>
        </div>
        <div class="col-md-8 shadow">
            <ul class="nav nav-tabs" style="margin-top: 15px;">
                <li class="active"><a href="#home" data-toggle="tab">首页</a></li>
                <li><a href="#self_info" data-toggle="tab">个人信息修改</a></li>
            </ul>

            <div class="tab-content">
                <div class="tab-pane active" id="home">
                    <div class="w">
                        <div><h2>学习名言</h2></div>
                        <div>念高危，则思谦冲而自牧；惧满盈，则思江海下百川。——魏征：《谏太宗十思疏》</div>
                        　　
                        <div>我们要真正学到一点东西，就要虚心。譬如一个碗，如果已经装得满满的，哪怕再有好吃的东西，象海参，鱼翅之类，也装不进去，如果碗是空的，就能装很多东西。——《雷锋日记》</div>
                    </div>
                </div>
                <div class="tab-pane" id="self_info">
                    <form class="form-horizontal m-t" style="margin-top: 50px;" id="signupForm">

                        <div class="form-group">
                            <label class="col-sm-3 control-label">*姓名</label>
                            <div class="col-sm-8">
                                <input id="usename" name="usename" value="<%=stu.getName() %>" class="form-control" type="text" aria-required="true" aria-invalid="false" class="valid">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">年龄：</label>
                            <div class="col-sm-8">
                                <input id="age" name="age" value="<%=stu.getAge() %>" class="form-control" type="text" aria-required="true" aria-invalid="true" class="error">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label">性别：</label>
                            <div class="col-sm-8">
                                <input id="sex" name="sex" value="<%=stu.getSex() %>" class="form-control" type="text" aria-required="true" aria-invalid="true" class="error">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">手机：</label>
                            <div class="col-sm-8">
                                <input id="tel" name="tel" value="<%=stu.getPhone() %>" class="form-control" type="text" aria-required="true" aria-invalid="true" class="error">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">班级：</label>
                            <div class="col-sm-8">
                                <input id="grade" name="grade" value="<%=stu.getClassName() %>" class="form-control" type="text" aria-required="true" aria-invalid="true" class="error">
                            </div>
                        </div>



                        <div class="form-group">
                            <div class="col-sm-8 col-sm-offset-3">
                                <button class="btn btn-primary" type="submit">提交</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 全局js -->
<script src="../../resources/js/jquery.min.js?v=2.1.4"></script>
<script src="../../resources/js/bootstrap.min.js?v=3.3.6"></script>
<script src="../../resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../../resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="../../resources/js/plugins/layer/layer.min.js"></script>

</body>
</html>
