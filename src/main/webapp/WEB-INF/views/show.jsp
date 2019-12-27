<%--
  Created by IntelliJ IDEA.
  User: 海神阁
  Date: 2019/12/27
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>




<script src="../../resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

    $(window).on('load',function(){
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/studentController/getQuestions",
            data: {'id':1},
            dataType:'json',
            success: function (data) {
                dataStr = JSON.stringify(data);
                data = $.parseJSON(dataStr);
                alert(data);
                console.log(data)
            }
        });
    });


</script>

</body>
</html>
