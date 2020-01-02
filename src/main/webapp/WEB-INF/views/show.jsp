<%@ page import="com.exam.demain.Student" %><%--
  Created by IntelliJ IDEA.
  User: 海神阁
  Date: 2019/12/27
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> </title>
    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet">
    <script>
<%--        <%--%>
<%--            Student student = (Student) request.getSession().getAttribute("loginuser");--%>
<%--            //System.out.println(student.toString());--%>
<%--        %>--%>
    </script>
</head>
<body>

<%--<table id="table" class="table table-hover">--%>
<%--    <tr>--%>
<%--        <th>#</th><th>id</th><th>title</th><th>A</th> <th>B</th><th>C</th><th>D</th><th>E</th><th>答案</th>--%>
<%--    </tr>--%>
<%--</table>--%>
<%--<div class="btn-group btn-group-lg" role="group" aria-label="..." onclick="show()">aaaaaa</div>--%>
<%--<table id="table"></table>--%>

<div id="timer" style="color:red"></div>

<div class="row">
    <div class="col-md-10 col-md-push-1" style="color:gray;margin-top: 50px;">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>考试记录</h5>
            </div>
            <div class="ibox-content">

                <table class="table table-striped table-bordered table-hover dataTables-example">
                    <thead>
                    <tr>
                        <th class="col-md-1">序号</th>
                        <th class="col-md-2">学生</th>
                        <th class="col-md-2">试卷</th>
                        <th class="col-md-2">课程</th>
                        <th class="col-md-3">提交时间</th>
                        <th class="col-md-10"></th>
                    </tr>
                    </thead>
                    <tbody id="papers">

                    </tbody>
                </table>

            </div>
        </div>
    </div>
</div>

<%-- 试卷管理 --%>
<div class="row">
    <div class="col-md-10 col-md-push-1" style="color:gray;margin-top: 50px;">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>考试记录</h5>
            </div>
            <div class="ibox-content">

                <table class="table table-striped table-bordered table-hover dataTables-example">
                    <thead>
                    <tr>
                        <th class="col-md-1">序号</th>
                        <th class="col-md-2">试卷</th>
                        <th class="col-md-2">课程</th>
                        <th class="col-md-2">班级</th>
                        <th class="col-md-2">创建者</th>
                        <th class="col-md-2">时长</th>
                        <th class="col-md-10"></th>
                    </tr>
                    </thead>
                    <tbody id="showpapers">

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<script src="../../resources/js/jquery-3.4.1.min.js"></script>
<script src="../../resources/js/bootstrap.min.js"></script>
<script src="../../resources/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script type="text/javascript">
$(function () {

    $.ajax({
        url: "${pageContext.request.contextPath}/teacherController/selectclazzAllPaper",
        type: "post",
        data: {"id": 1},
        dataType: "json",
        success: function (data) {
            console.log(data);

            for(var i = 0; i<data.length;i++){
                $("#papers").append(
                    "<tr><td>"+(i+1)+"</td><td>"+data[i].studentname+"</td>"+
                    "<th>"+data[i].title+"</th>"+
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


    $.ajax({
        url: "${pageContext.request.contextPath}/teacherController/selectAllPaper",
        type: "post",
        data: {"id": 1},
        dataType: "json",
        success: function (data) {
            console.log(data);
            for(var i = 0; i<data.length;i++){
                $("#showpapers").append(
                    "<tr><td>"+(i+1)+"</td><td>"+data[i].title+"</td>"+
                    "<th>"+data[i].course+"</th>"+
                    "<th>"+data[i].className+"</th>"+
                    "<th>"+data[i].createusername+"</th>"+
                    "<th>"+data[i].keepTime+"</th>"+
                    "<th><a href='/jumpController/testshow?id="+data[i].id+"&title="+data[i].title+"'>查看试卷</a></th>"+
                    "</tr>"
                );


            }
        },
        eror: function (dtta) {
            alert("error")
        }
    });
});

<%--    倒计时
    var oBox= document.getElementById('timer');
    var maxtime = 6 * 60;
    function CountDown() {
        if (maxtime >= 0) {
            minutes = Math.floor(maxtime / 60);
            seconds = Math.floor(maxtime % 60);
            msg = "距离结束还有" + minutes + "分" + seconds + "秒";
            oBox.innerHTML = msg;
            if (maxtime == 5 * 60)alert("还剩5分钟");
            --maxtime;
        } else{
            clearInterval(timer);
            alert("时间到，结束!");
        }
    }
    timer = setInterval("CountDown()", 1000);
--%>

    <%--$(window).on('load',function(){--%>
    <%--    $.ajax({--%>
    <%--        type: "post",--%>
    <%--        url: "${pageContext.request.contextPath}/studentController/selectparper",--%>
    <%--        data: {'id':1},--%>
    <%--        dataType:'json',--%>
    <%--        success: function (data) {--%>
    <%--            dataStr = JSON.stringify(data);--%>
    <%--            data = $.parseJSON(dataStr);--%>
    <%--            alert(dataStr);--%>
    <%--            console.log(data)--%>
    <%--            var table=document.getElementById("table");--%>
    <%--            for(var i=0;i<data.length;i++){--%>
    <%--                var row=table.insertRow(table.rows.length);--%>
    <%--                var c0 = row.insertCell(0);--%>
    <%--                c0.innerHTML = "<input type=\"checkbox\" value=" +data[i]+">";--%>
    <%--                var c1=row.insertCell(1);--%>
    <%--                c1.innerHTML=i+1;--%>

    <%--                var c2=row.insertCell(2);--%>
    <%--                c2.innerHTML=data[i].title;--%>

    <%--                console.log(data[i].choosees);--%>
    <%--                var choosees = data[i].choosees;--%>
    <%--                var c3=row.insertCell(3);--%>
    <%--                c3.innerHTML= choosees.a;--%>
    <%--                var c4=row.insertCell(4);--%>
    <%--                c4.innerHTML= choosees.b;--%>
    <%--                var c5=row.insertCell(5);--%>
    <%--                c5.innerHTML= choosees.c;--%>
    <%--                var c6=row.insertCell(6);--%>
    <%--                c6.innerHTML= choosees.d;--%>
    <%--                var c7=row.insertCell(7);--%>
    <%--                if(choosees.e == undefined){--%>
    <%--                    c7.innerHTML= "";--%>
    <%--                }else {--%>
    <%--                    c7.innerHTML= choosees.e;--%>
    <%--                }--%>
    <%--                var c8=row.insertCell(8);--%>
    <%--                c8.innerHTML= data[i].answer;--%>
    <%--            }--%>
    <%--        }--%>
    <%--    });--%>
    <%--});--%>

    function  show() {
        var getSelectRows = $("#table").bootstrapTable('getSelections', function (row) { return row; });
        for (var i = 0; i < getSelectRows.length; i++) {
            console.log(getSelectRows[i])
        }
    }







</script>

</body>
</html>
