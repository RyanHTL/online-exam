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
<div class=" col-md-10 col-md-push-1" style="text-align: center;"><h2>java测试题二</h2></div>
<div style="text-align: center;">
    <div class="col-md-10 col-md-push-1" style="font-size: 20px;">
        <small id="sum">试卷总分：</small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<small>考试试卷：30分钟</small>

    </div>

</div>
<div class="row">
    <div class="col-md-10 col-md-push-1">
        <form method="post">
            <div class="row"><h3>一、选择题</h3>
                <div class="bk" id="single">
<%--                    <c:forEach items="${questions}" var="question" varStatus="id">--%>
<%--                        <c:if test="${q.type==0}">--%>
<%--                            <h5>--%>
<%--                                <p>${id.index}、${question.title}</p></br>--%>

<%--                            </h5>--%>
<%--                            </br>--%>
<%--                        </c:if>--%>
<%--                    </c:forEach>--%>
<%--                        <p><%="="+request.getAttribute("questions")%></p>--%>
<%--                        <p>${questions}</p>--%>
<%--                    <h5>--%>
<%--                        <p>1、在边界值分析中，哪个数据通常不用来做数据测试</p></br>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dx2" type="radio" value="1" />&nbsp;A、</label>1</div>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dx2" type="radio" value="2" />&nbsp;B、</label>2</div>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dx2" type="radio" value="3" />&nbsp;C、</label>3</div>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dx2" type="radio" value="4" />&nbsp;D、</label>4</div>--%>
<%--                    </h5>--%>
<%--                    </br>--%>
<%--                    <h5>--%>
<%--                        <p>1、在边界值分析中，哪个数据通常不用来做数据测试</p></br>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dx3" type="radio" value="1" />&nbsp;A、</label>1</div>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dx3" type="radio" value="2" />&nbsp;B、</label>2</div>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dx3" type="radio" value="3" />&nbsp;C、</label>3</div>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dx3" type="radio" value="4" />&nbsp;D、</label>4</div>--%>
<%--                    </h5>--%>
<%--                    </br>--%>
                </div>
            </div>
            <div class="row"><h3>二、多选题</h3>
                <div class="bk" id="mul">
<%--                    <h5>--%>
<%--                        <p>1、遇有（ ）或风力在5级及以上恶劣天气时，一般不进行V形天窗作业。若必须利用 V形天窗进行检修和故障处理或事故抢修时，应增设接地线，并在加强监护的情况下方准作业。</p></br>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dux1" type="checkbox" value="雨" />&nbsp;A、</label>雨</div>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dux1" type="checkbox" value="雪" />&nbsp;B、</label>雪</div>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dux1" type="checkbox" value="雾" />&nbsp;C、</label>雾</div>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dux1" type="checkbox" value="较热天气" />&nbsp;D、</label>较热天气</div>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dux1" type="checkbox" value="炎热天气" />&nbsp;E、</label>炎热天气</div>--%>
<%--                    </h5>--%>
<%--                    </br>--%>
<%--                    <h5>--%>
<%--                        <p>1、遇有（ ）或风力在5级及以上恶劣天气时，一般不进行V形天窗作业。若必须利用 V形天窗进行检修和故障处理或事故抢修时，应增设接地线，并在加强监护的情况下方准作业。</p></br>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dux2" type="checkbox" value="雨" />&nbsp;A、</label>雨</div>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dux2" type="checkbox" value="雪" />&nbsp;B、</label>雪</div>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dux2" type="checkbox" value="雾" />&nbsp;C、</label>雾</div>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dux2" type="checkbox" value="较热天气" />&nbsp;D、</label>较热天气</div>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dux2" type="checkbox" value="炎热天气" />&nbsp;E、</label>炎热天气</div>--%>
<%--                    </h5>--%>
<%--                    </br>--%>
<%--                    <h5>--%>
<%--                        <p>1、遇有（ ）或风力在5级及以上恶劣天气时，一般不进行V形天窗作业。若必须利用 V形天窗进行检修和故障处理或事故抢修时，应增设接地线，并在加强监护的情况下方准作业。</p></br>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dux3" type="checkbox" value="雨" />&nbsp;A、</label>雨</div>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dux3" type="checkbox" value="雪" />&nbsp;B、</label>雪</div>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dux3" type="checkbox" value="雾" />&nbsp;C、</label>雾</div>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dux3" type="checkbox" value="较热天气" />&nbsp;D、</label>较热天气</div>--%>
<%--                        <div>&nbsp;&nbsp;<label><input name="dux3" type="checkbox" value="炎热天气" />&nbsp;E、</label>炎热天气</div>--%>
<%--                    </h5>--%>
<%--                    </br>--%>

                </div>
            </div>
            <div style="text-align: center;">
                <input type="submit" value="提交" class="btn btn-success">
            </div>
        </form>
    </div>
</div>
<div class="row" style="height: 150px;"></div>
<!-- 全局js -->
<script src="../../resources/js/jquery.min.js?v=2.1.4"></script>
<script src="../../resources/js/bootstrap.min.js?v=3.3.6"></script>
<script src="../../resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../../resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="../../resources/js/plugins/layer/layer.min.js"></script>

<script>

    $(function () {
        var id = '${paper}';
        // alert(id);
        var html = '';
        $.ajax({
            url: "${pageContext.request.contextPath}/studentController/selectQuestions",
            type: "post",
            data: {"id": id},
            dataType: "json",
            success: function (data) {
                console.log(data);

                var sum = 0;
                for (var j =0; j<data.length;j++){
                    var i = j+1;
                    var sum = sum + Number(data[j].score);

                    if(data[j].type === 0){
                        $("#single").append(
                            "<h5> <p>" + i + "、" + data[j].title + "</p></br>" +
                            "<div>&nbsp;&nbsp;<label><input name='dx3' type='radio' value='A'/>&nbsp;A、</label>" + data[j].choosees.A + "</div>" +
                            "<div>&nbsp;&nbsp;<label><input name='dx3' type='radio' value='B'/>&nbsp;B、</label>" + data[j].choosees.B + "</div>" +
                            "<div>&nbsp;&nbsp;<label><input name='dx3' type='radio' value='C'/>&nbsp;C、</label>" + data[j].choosees.C + "</div>" +
                            "<div>&nbsp;&nbsp;<label><input name='dx3' type='radio' value='D '/>&nbsp;D、</label>" + data[j].choosees.D + "</div>" +
                            "</h5></br>"
                        );
                    }
                    else if(data[j].type === 1){
                        $("#mul").append(
                            "<h5> <p>" + i + "、" + data[j].title + "</p></br>" +
                            "<div>&nbsp;&nbsp;<label><input name='dx3' type='checkbox' value='A'/>&nbsp;A、</label>" + data[j].choosees.A + "</div>" +
                            "<div>&nbsp;&nbsp;<label><input name='dx3' type='checkbox' value='B'/>&nbsp;B、</label>" + data[j].choosees.B + "</div>" +
                            "<div>&nbsp;&nbsp;<label><input name='dx3' type='checkbox' value='C'/>&nbsp;C、</label>" + data[j].choosees.C + "</div>" +
                            "<div>&nbsp;&nbsp;<label><input name='dx3' type='checkbox' value='D'/>&nbsp;D、</label>" + data[j].choosees.D + "</div>" +
                            "<div>&nbsp;&nbsp;<label><input name='dx3' type='checkbox' value='E'/>&nbsp;D、</label>" + data[j].choosees.E + "</div>" +
                            "</h5></br>"
                        );
                    }
                }
                $("#sum").append(sum);

            },

            eror: function (dtta) {
                alert("error")
            }
        });

    });



</script>
</body>
</html>
