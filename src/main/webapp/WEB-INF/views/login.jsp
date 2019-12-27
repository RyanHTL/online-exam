<%--
  Created by IntelliJ IDEA.
  User: 海神阁
  Date: 2019/12/25
  Time: 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎登陆</title>
<%--    <base href="<%=request.getContextPath()%>">--%>

    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../resources/css/font-awesome.css" rel="stylesheet">
    <link href="../../resources/css/animate.css" rel="stylesheet">
    <link href="../../resources/css/style.css" rel="stylesheet">

    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>
</head>
<body class="gray-bg">

    <div class="middle-box text-center loginscreen  animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">E</h1>

            </div>
            <h3>在线考生系统</h3>

            <form class="m-t" role="form" >
                <div class="form-group">
                    <input type="text" id="loginname" class="form-control" placeholder="用户名" value="111111">
                </div>
                <div class="form-group">
                    <input type="password" id="password" class="form-control" placeholder="密码" value="111111">
                </div>

                <%--       验证码         --%>
                <div  class="form-group">
                    <input id="j_captcha" type="text" class="col-md-6" style="border-style:1px  solid #9fff14; margin-top: 8px;" placeholder="验证码">
                    <img id="captcha_img" alt="点击更换" title="点击更换" onclick="changeVerifyCode(this)" src="../Kaptcha"/>
                </div>
                <button id="commit" type="button" class="btn btn-primary block full-width m-b">登 录</button>
                <p class="text-muted text-center"> <a href="login.jsp#"><small>忘记密码了？</small></a> | <a href="${pageContext.request.contextPath}/jumpController/register">注册一个新账号</a>
                    <a href="${pageContext.request.contextPath}/jumpController/show">testJSON</a>
                </p>
            </form>
        </div>
    </div>
    <!-- 全局js -->
    <script src="../../resources/js/jquery-3.4.1.min.js"></script>
    <script src="../../resources/js/jquery.min.js?v=2.1.4"></script>
    <script src="../../resources/js/bootstrap.min.js"></script>
    <script>
        var basePath = "${pageContext.request.contextPath}/";

        $(function () {
            $("#commit").click(function () {
                var loginname = $("#loginname").val();
                var password = $("#password").val();
                var verifyCodeActual = $('#j_captcha').val();
                if (!verifyCodeActual) {
                    alert('请输入验证码！');
                    return;
                }
                var data = {
                    "loginname": loginname,
                    "password": password,
                    "verifyCodeActual": verifyCodeActual
                };
                // alert(verifyCodeActual);
                $.ajax({
                    url: '${pageContext.request.contextPath}/loginController/checklogin',
                    type: 'POST',
                    dataType:"json",
                    data:data,
                    success: function (data) {
                        window.location.href = "${pageContext.request.contextPath}/jumpController/index";
                        console.log(data);
                        if (data.success) {
                            alert('SUCCESS!');

                        } else {
                            alert('ERROR！' + data.errMsg);
                        }
                        // 点击验证码图片的时候，注册码会改变
                        $('#captcha_img').click();
                    },
                    error: function (data) {
                        alert("登录出现错误！")
                    }

                });
            })
        });

        // 验证码
        function changeVerifyCode(img) {
            img.src = "../Kaptcha?" + Math.floor(Math.random() * 100);
        }

    </script>

</body>
</html>
