<%@ page import="com.exam.demain.Student" %><%--
  Created by IntelliJ IDEA.
  User: 海神阁
  Date: 2020/1/2
  Time: 12:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet">

    <script>
        <%
            Student student = (Student) request.getSession().getAttribute("loginuser");
            //System.out.println(student.toString());
        %>
    </script>
</head>
<body>

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

<script src="../../resources/js/jquery-3.4.1.min.js"></script>
<script src="../../resources/js/bootstrap.min.js"></script>
<script src="../../resources/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script type="text/javascript">
    $(function () {

        $.ajax({
            url: "${pageContext.request.contextPath}/teacherController/selectclazzAllPaper",
            type: "post",
            data: {"id": <%=student.getId()%>},
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

    });


</script>
</body>
</html>
