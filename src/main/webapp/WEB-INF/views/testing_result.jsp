<%--
  Created by IntelliJ IDEA.
  User: 海神阁
  Date: 2019/12/26
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page import="java.util.List"%>
    <%@ page import="com.exam.demain.Student" %>

    <title> - 数据表格</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="../../resources/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="../../resources/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <!-- Data Tables -->
    <link href="../../resources/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">

    <link href="../../resources/css/animate.css" rel="stylesheet">
    <link href="../../resources/css/style.css?v=4.1.0" rel="stylesheet">
    <style>
        .bk{
            box-shadow: 2px 2px 3px rgba(150, 149, 150, 0.397);
            margin-top:20px;
        }
    </style>

</head>
<body>
<div class=" col-md-10 col-md-push-1" style="text-align: center;" ><h2 id="title"></h2></div>
<div style="text-align: center;">
    <div class="col-md-10 col-md-push-1" style="font-size: 20px;">
        <small id="sum">试卷总分：</small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<small id="score">最终的分：</small>

    </div>

</div>
<div class="row">
    <div class="col-md-10 col-md-push-1">
        <form method="post">
            <div class="row"><h3>一、选择题</h3>
                <div class="bk" id="single">

                </div>
            </div>
            <div class="row"><h3>二、多选题</h3>
                <div class="bk" id="mul">

                </div>
            </div>
            <div style="text-align: center;">
                <input type="button" onclick="getanswer()" value="提交" class="btn btn-success">
            </div>
        </form>
    </div>
</div>
<div class="row" style="height: 150px;"></div>
<!-- 全局js -->
<script src="../../resources/js/jquery-3.4.1.min.js"></script>
<script src="../../resources/js/bootstrap.min.js?v=3.3.6"></script>
<script src="../../resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../../resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="../../resources/js/plugins/layer/layer.min.js"></script>


<script>
<%--    <% Student loginuser = (Student)request.getSession().getAttribute("loginuser");--%>
<%--        System.out.println("testing user =>"+loginuser.toString());--%>
<%--    %>--%>
</script>
<script>

    var n =0;
    var m =0;
    var id = '${id}';
    var title = '${title}';
    $(function () {
        $("#title").append(title);
        // alert(id);
        var html = '';
        $.ajax({
            url: "${pageContext.request.contextPath}/studentController/selectQuestionsAndAnswer",
            type: "post",
            data: {"id": id},
            dataType: "json",
            success: function (data) {
                console.log(data);
                var sum = 0;
                $.ajax({
                    url: "${pageContext.request.contextPath}/studentController/selectsubPaperOne",
                    type: "post",
                    data: {"id": id},
                    dataType: "json",
                    success: function (data2) {
                        console.log(data2);
                        console.log(data2.content);
                        for (var j =0; j<data.length;j++){
                            var i = j+1;
                            sum = sum + Number(data[j].score);
                            if(data[j].type === 0){
                                $("#single").append(
                                    "<h5> <p>" + i + "、" + data[j].title + "("+data[j].score+"分)</p></br>" +
                                    "<div>&nbsp;&nbsp;<label><input name='dx"+m+"' type='radio' value='A'/>&nbsp;A、" + data[j].choosees.A + "</label></div>" +
                                    "<div>&nbsp;&nbsp;<label><input name='dx"+m+"' type='radio' value='B'/>&nbsp;B、" + data[j].choosees.B + "</label></div>" +
                                    "<div>&nbsp;&nbsp;<label><input name='dx"+m+"' type='radio' value='C'/>&nbsp;C、" + data[j].choosees.C + "</label></div>" +
                                    "<div>&nbsp;&nbsp;<label><input name='dx"+m+"' type='radio' value='D '/>&nbsp;D、" + data[j].choosees.D + "</label></div>" +
                                    "<div><p>你的答案："+data2.content[i]+"</p><p>正确答案："+data[j].answerstring+"</p></div>"+
                                    "</h5></br>"
                                );
                                m+=1;
                            }
                            else if(data[j].type === 1){

                                $("#mul").append(
                                    "<h5> <p>" + i + "、" + data[j].title + "("+data[j].score+"分)</p></br>" +
                                    "<div>&nbsp;&nbsp;<label><input name='dxs"+n+"' type='checkbox' value='A'/>&nbsp;A、" + data[j].choosees.A + "</label></div>" +
                                    "<div>&nbsp;&nbsp;<label><input name='dxs"+n+"' type='checkbox' value='B'/>&nbsp;B、" + data[j].choosees.B + "</label></div>" +
                                    "<div>&nbsp;&nbsp;<label><input name='dxs"+n+"' type='checkbox' value='C'/>&nbsp;C、" + data[j].choosees.C + "</label></div>" +
                                    "<div>&nbsp;&nbsp;<label><input name='dxs"+n+"' type='checkbox' value='D'/>&nbsp;D、" + data[j].choosees.D + "</label></div>" +
                                    "<div>&nbsp;&nbsp;<label><input name='dxs"+n+"' type='checkbox' value='E'/>&nbsp;D、" + data[j].choosees.E + "</label></div>" +
                                    "<div><p>你的答案："+data2.content[i]+"</p><p>正确答案："+data[j].answerstring+"</p></div>"+
                                    "</h5></br>"
                                );
                                n+=1;
                            }
                        }
                        $("#sum").append(sum);
                        $("#score").append(data2.score);

                    }
                });



            },

            eror: function (dtta) {
                alert("error")
            }
        });




    });




</script>
</body>
</html>
