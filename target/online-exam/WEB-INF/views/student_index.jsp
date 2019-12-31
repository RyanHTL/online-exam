<%--
  Created by IntelliJ IDEA.
  User: 海神阁
  Date: 2019/12/30
  Time: 20:22
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
    </script>
    <style>
        .shadow{
            box-shadow: gray 0px 0px 10px;
            display: inline;
            height:300px;
            margin-top:20px;
            text-align: center;
            margin-left:27px;
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
                <li class="active"><a href="${pageContext.request.contextPath}/jumpController/student_index" target="_self">首页</a></li>
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
<!-- 图片轮播-->
<div>
    <div class="row" style="height:300px; background: url('../../resources/image/p_big2.jpg') no-repeat;background-size:cover;"></div>
</div>
<!-- 主页-->
<div class="row" style="margin-top: 50px;">
    <div class="col-md-10 col-md-push-1">
        <h3 style="border-left: 10px solid rgb(54,81,221);">任务中心</h3>
    </div>
    <div class="col-md-10 col-md-push-1">
        <h3 style="border-left: 10px solid #1AB394;">固定试卷</h3>
        <ul>
            <li class="shadow col-md-2 " >

                <div style="margin-top: 80px;">
                    <i class="fa fa-book" style="font-size: 100px;"></i>
                    <div style="margin-top: 10px; font-size: 16px;">
                        <span style="float:left">java测试题二</span><br>
                        <div class="bottom clearfix" style="float:right">
                            <a href="${pageContext.request.contextPath}/jumpController/testing?id=1">开始做题</a>

                        </div>
                    </div>
                </div>

            </li>
            <li class="shadow col-md-2 " >

                <div style="margin-top: 80px;">
                    <i class="fa fa-book" style="font-size: 100px;"></i>
                    <div style="margin-top: 10px; font-size: 16px;">
                        <span style="float:left">java测试题二</span><br>
                        <div class="bottom clearfix" style="float:right">
                            <a href="${pageContext.request.contextPath}/jumpController/testing?id=13">开始做题</a>

                        </div>
                    </div>
                </div>

            </li>

        </ul>

    </div>
    <div class="col-md-10 col-md-push-1">
        <h3 style="border-left: 10px solid #C8A732;">时段试卷</h3>
        <ul>
            <li class="shadow col-md-2 " >

                <div style="margin-top: 80px;">
                    <i class="fa fa-book" style="font-size: 100px;"></i>
                    <div style="margin-top: 10px;">
                        <span style="float:left; font-size: 16px;">java测试题二</span><br>
                        <div class="bottom clearfix" style="float:right">
                            <small>2019年1月1日</small><br>
                            <small>2020年1月1日</small><br>
                            <a href="${pageContext.request.contextPath}/jumpController/testing" style="font-size:16px;">开始做题</a>

                        </div>
                    </div>
                </div>

            </li>
            <li class="shadow col-md-2 " >

                <div style="margin-top: 80px;">
                    <i class="fa fa-book" style="font-size: 100px;"></i>
                    <div style="margin-top: 10px;">
                        <span style="float:left; font-size: 16px;">java测试题二</span><br>
                        <div class="bottom clearfix" style="float:right">
                            <small>2019年1月1日</small><br>
                            <small>2020年1月1日</small><br>
                            <a href="${pageContext.request.contextPath}/jumpController/testing" style="font-size:16px;">开始做题</a>

                        </div>
                    </div>
                </div>

            </li>



        </ul>
    </div>
    <div class="col-md-10 col-md-push-1">
        <h3 style="border-left: 10px solid #CF7EA9;">推送试卷</h3>
    </div>

</div>


<!-- 全局js -->
<script src="../../resources/js/jquery.min.js?v=2.1.4"></script>
<script src="../../resources/js/bootstrap.min.js?v=3.3.6"></script>
<script src="../../resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../../resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="../../resources/js/plugins/layer/layer.min.js"></script>
<script>
    var ul=document.querySelector("ul");
    var N=ul.firstElementChild;
    ul.addEventListener("click",clickHandler);
    function clickHandler(e) {
        if(e.target instanceof HTMLUListElement) return;
        if(e.target instanceof HTMLLIElement) return;
        if(N){
            N.className="";
        }
        N=e.target.parentElement;
        N.className="active";

    }

</script>
</body>
</html>
