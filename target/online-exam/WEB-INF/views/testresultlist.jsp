<%@ page import="com.exam.demain.Student" %><%--
  Created by IntelliJ IDEA.
  User: 海神阁
  Date: 2019/12/30
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="../../resources/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="../../resources/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <!-- Data Tables -->
    <link href="../../resources/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">

    <link href="../../resources/css/animate.css" rel="stylesheet">
    <link href="../../resources/css/style.css?v=4.1.0" rel="stylesheet">

    <script>
        <%
            Student student = (Student) request.getSession().getAttribute("loginuser");
            System.out.println(student.toString());
        %>
    </script>

</head>
<body>
<!-- 导航栏-->
<div class="row">
    <div class="col-md-12 " style="height:80px;">

        <img src="../../resources/image/1.jpg" height="50px;" width="50px;"><small style="font-size: 20px;">在线考试</small>

        <div class="col-lg-4 " style="float: right;">
            <ul class="nav nav-pills nav-justified">
                <li ><a href="${pageContext.request.contextPath}/jumpController/student_index" target="_self">首页</a></li>
                <li class="active"><a href="${pageContext.request.contextPath}/jumpController/testresult" target="_self">考试记录</a></li>
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

<div class="row">
    <div class="col-md-8 col-md-push-1" style="color:gray;margin-top: 50px;">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>考试记录</h5>
            </div>
            <div class="ibox-content">

                <table class="table table-striped table-bordered table-hover dataTables-example">
                    <thead>
                    <tr>
                        <th class="col-md-1">序号</th>
                        <th class="col-md-4">名称</th>
                        <th class="col-md-2">学科</th>
                        <th class="col-md-3">做题时间</th>
                        <th class="col-md-2"></th>
                    </tr>
                    </thead>
                    <tbody id="papers">

                    </tbody>

                </table>

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
    $(function(){
        $(".btn").dropdown();
    });

    $(function () {
        var html = '';

        $.ajax({
            url: "${pageContext.request.contextPath}/studentController/selectsubPaper",
            type: "post",
            data: {"id": <%=student.getId() %>},
            dataType: "json",
            success: function (data) {
                console.log(data);

                for(var i = 0; i<data.length;i++){
                    $("#papers").append(
                        "<tr><td>"+1+"</td><td>"+data[i].title+"</td>"+
                        "<th>"+data[i].name+"</th>"+
                        "<th>"+data[i].submittime+"</th>"+
                        "<th><a href='/jumpController/testingresult?id="+data[i].id+"&title="+data[i].title+"'>查看试卷</a></th>"+
                        "</tr>"
                    );


                }
            },
            eror: function (dtta) {
                alert("error")
            }
        });
    })

</script>
</body>
</html>
