<%--
  Created by IntelliJ IDEA.
  User: 海神阁
  Date: 2019/12/31
  Time: 8:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.ArrayList"%>
<%@ page import="com.exam.demain.Student" %>
<html>
<head>
    <title>Title</title>


    <link href="../../resources/css/bootstrap.min.css" media="screen" rel="stylesheet" type="text/css"/>


    <script src="../../resources/js/jquery.min.js">
    </script>
    <script src="../../resources/js/bootstrap.min.js"></script>
    <title>Title</title>
    <script>
        <%
            Student student = (Student) request.getSession().getAttribute("loginuser");

        %>
        $(function () {

            // alert(id);
            var html = '';
            $.ajax({
                url: "/teacherController/selectAllStudents",
                type: "post",
                data: {"t_id": <%=student.getId() %>},
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    for (i in data) {
                        x = "<tr><td>" + "<input type='radio' name='sturadio' value='" + data[i].id + "'/>" + "</td>" + "<td>" + data[i].account + "</td>" + "<td>" + data[i].name + "</td>"+ "<td>" + data[i].sex + "</td>" + "<td>" + data[i].className + "</td>" + "<td>" + data[i].age + "</td>" + "<td>" + data[i].phone + "</td></tr>";
                        $("#tb").append(x);
                    }

                }

            });


        });
        // $(document).ready(function () {
        //     var x=" ";
        //     // var users = [
        //     //     { "id":"1","name":"roob" ,"password":"123" ,"isAdmin":"1"},
        //     //     { "id":"2","name":"goog" , "password":"456" ,"isAdmin":"0"},
        //     // ];
        //     var students = [
        //         { "stu_id":"179000504","stu_name":"张剑君" ,"clazz":"1790005" ,"grade":"17级","tel":"15324"},
        //         { "stu_id":"179000501","stu_name":"张君" ,"clazz":"1890005" ,"grade":"18级","tel":"15324"},
        //     ];
        //     // for (i in users) {
        //     //   x="<tr><td>" +"<input type='checkbox'/>"+ "</td>"+"<td>"+users[i].id+"</td>"+"<td>" +users[i].name+ "</td>"+"<td>" +users[i].password + "</td>"+"<td>" +users[i].isAdmin + "</td></tr>";
        //     //     $("#tb").append(x);
        //     // }
        //     for (i in students) {
        //         x="<tr><td>" +"<input type='checkbox'/>"+ "</td>"+"<td>"+students[i].stu_id+"</td>"+"<td>" +students[i].stu_name+ "</td>"+"<td>" +students[i].clazz + "</td>"+"<td>" +students[i].grade+ "</td>"+"<td>" +students[i].tel + "</td></tr>";
        //         $("#tb").append(x);
        //     }
        // })
        //发送一个 HTTP POST 请求页面并获取返回内容
        // $(document).ready(function(){
        //     $("#button1").click(function(){
        //         $.post("/try/ajax/demo_test_post.php",{
        //                 name:"菜鸟教程",
        //                 url:"http://www.runoob.com"
        //             },
        //             function(data,status){
        //                 alert("数据: \n" + data + "\n状态: " + status);
        //             });
        //     });
        // });
        //保存用户信息
        function saveeditUser() {
            var id = $("#sid").val();
            var stu_id = $("#stu_id-1").val();
            var stu_name = $("#stu_name-1").val();
            var sex = $("#sex").val();
            var clazz = $("#clazz-1").val();
            var age = $("#age-1").val();
            var tel = $("#tel-1").val();
            console.log(id+" "+stu_id+" "+stu_name+" "+clazz+" "+age+" "+tel)
            $.ajax({
                url: "${pageContext.request.contextPath}/teacherController/saveStudent",//获取数据的URL
                data:{"id":id,"account":stu_id,"name":stu_name,"className":clazz,"age":age,"phone":tel,"sex":sex},//前端将数据给后端

                type: "POST",//HTTP请求方法
                dataType:"JSON",
                success:function(data){
                    if(data===1){//传入为JSON对象格式
                        alert('修改成功');

                        $("#myModal-1").modal("hide");

                    }
                    else{
                        $("#labletip").show();
                    }
                },
                error:function(err){
                    alert('连接失败' );
                }
            });
        }
        //编辑用户
        function editUser() {//data-toggle="modal"  data-target="#myModal-1"    //模态框

            var vals = [];
            // var x=0;//记录选中的数据下标值，从0开始
            $('input:radio:checked').each(function (index, item) {
                    vals.push($(this).val());
                }
            );
            if (vals.length < 1 || vals.length >= 2) {
                $("#editButton").removeAttr("data-target");

                //$("editButton").removeAttr("data-target");
                alert("请选择一条数据");
            } else {
                //回显数据
                var stu_Arr = new Array();
                console.log(stu_Arr);
                var i = 0;
                $('input:radio:checked').parent().siblings().each(function (index) {
                    //userArr[i++].push($(this).val());
                    stu_Arr[i++] = $(this).text()
                    //alert($(this).text());
                })
                $("input[id='sid']").val($('input:radio:checked').val());
                $("input[id='stu_id-1']").val(stu_Arr[0]);
                $("input[id='stu_name-1']").val(stu_Arr[1]);
                $("input[id='sex']").val(stu_Arr[2]);
                $("input[id='clazz-1']").val(stu_Arr[3]);
                $("input[id='age-1']").val(stu_Arr[4]);
                $("input[id='tel-1']").val(stu_Arr[5]);
                //数据显示在模态框
                $("#editButton").attr("data-target", "#myModal-1");

            }
        };

        //删除用户
        function deleteUser() {
            var vals = [];
            $('input:radio:checked').each(function (index, item) {
                    vals.push($(this).val());
                }
            );
            if (vals.length < 1) {
                //$("#editButton").removeAttr("data-target");

                //$("editButton").removeAttr("data-target");
                alert("请至少选择一条数据");
            }
            else {
                var s_id=$('input:radio:checked').val();
                $.ajax({
                    url: "${pageContext.request.contextPath}/teacherController/deleteStudent",//获取数据的URL
                    data:{"id":s_id},//前端将数据给后端

                    type: "POST",//HTTP请求方法
                    dataType:"JSON",
                    success:function(data){
                        if(data==true){//传入为JSON对象格式
                            alert('删除成功');
                        }
                        else{
                            $("#labletip").show();
                        }
                    },
                    error:function(err){
                        alert('连接失败' );
                    }
                });


            }

        }

        function saveUser() {
            var account=$("#stu_id").val()
            var name= $("#stu_name").val();
            var password = $("#password").val();
            var age = $("#age").val();
            var sex = $("#sex1").val();
            var classid = $("#clazz").val();
            var phone = $("#tel").val();


            console.log(account+" "+name+" "+password+" "+age+" "+sex+" "+classid+" "+phone);
            $.ajax({
                url: "/teacherController/insertUser",//获取数据的URL
                data:{"account":account,"name":name,"password":password,"age":age,"sex":sex,"classid":classid,"phone":phone,"role":2},//前端将数据给后端
                type: "POST",//HTTP请求方法
                dataType : 'JSON',//获取数据执行方式
                success:function(data){
                    if(data===1){//传入为JSON对象格式
                        alert('添加成功');

                        $("#myModal").modal("hide");

                    }
                    else{
                        $("#labletip").show();
                    }
                },
                error:function(err){
                    alert('连接失败');
                }
            });
        }

    </script>
</head>
<body>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <!--工具栏-->

    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="toolbar" style="height: 20px;">
                    <h5>学生信息表</h5>
                    <ul class="nav nav-pills">
                        <li role="presentation" class="active">
                            <button type="button" data-toggle="modal" data-target="#myModal"><i
                                    class="glyphicon glyphicon-plus-sign"></i>
                                新增
                            </button>
                        </li>
                        <li role="presentation" class="active">
                            <button id="editButton" onclick="editUser()" type="button" data-toggle="modal"><i
                                    class="glyphicon glyphicon-edit"></i>
                                修改
                            </button>
                        </li>
                        <li role="presentation" class="active">
                            <button id="deleteButton" onclick="deleteUser()" type="button" data-toggle="modal"><i
                                    class="glyphicon glyphicon-remove"></i>
                                删除
                            </button>
                        </li>

                    </ul>
                </div>

                <div class="ibox-content">
                    <table class="table table-striped table-bordered table-hover  dataTables-example" id="tb">
                        <tr>
                            <th>选中</th>
                            <th>学号</th>
                            <th>姓名</th>
                            <th>性别</th>
                            <th>班级</th>
                            <th>年龄</th>
                            <th>联系方式</th>
                        </tr>

                    </table>

                </div>


            </div>
        </div>
    </div>
    <!--显示表格-->

    <!-- Modal 添加模态框-->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h2 class="modal-title" id="myModalLabel">新增用户信息</h2>
                </div>
                <div class="modal-body">
                    <form class="fm">

                        <table class="table table-hover table-bordered" >
                            <tr>
                                <th>学号</th>
                                <td><input type="text" name="stu_id" class="form-control" id="stu_id" /></td>
                            </tr>
                            <tr>
                                <th>姓名</th>
                                <td><input type="text" name="stu_name" class="form-control" id="stu_name"/></td>
                            </tr>
                            <tr>
                                <th>密码</th>
                                <td><input type="password" name="password" class="form-control" id="password"/></td>
                            </tr>
                            <tr>
                                <th>年龄</th>
                                <td><input type="text" name="age" class="form-control" id="age"/></td>
                            </tr>
                            <tr>
                                <th>性别</th>
                                <td><input type="text" name="sex1" class="form-control" id="sex1"/></td>
                            </tr>
                            <tr>
                                <th>班级id</th>
                                <td><input type="text" name="clazz" class="form-control" id="clazz"/></td>
                            </tr>
                            <tr>
                                <th>联系方式</th>
                                <td><input type="text" name="tel" class="form-control" id="tel"/></td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" id="button1" class="btn btn-primary" onclick="saveUser()">Save changes
                    </button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal 编辑模态框-->
    <div class="modal fade" id="myModal-1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel-1">编辑用户信息</h4>
                </div>
                <div class="modal-body">
                    <form class="fm">
                        <input id="sid" type="hidden"/>
                        <table class="table table-hover table-bordered">
                            <tr>
                                <th>学号</th>
                                <td><input type="text" name="stu_id" class="form-control" id="stu_id-1"/></td>
                            </tr>
                            <tr>
                                <th>姓名</th>
                                <td><input type="text" name="stu_name" class="form-control" id="stu_name-1"/></td>
                            </tr>
                            <tr>
                                <th>性别</th>
                                <td><input type="text" name="sex" class="form-control" id="sex"/></td>
                            </tr>
                            <tr>
                                <th>班级</th>
                                <td><input type="text" name="clazz" class="form-control" id="clazz-1"/></td>
                            </tr>
                            <tr>
                                <th>年龄</th>
                                <td><input type="text" name="age" class="form-control" id="age-1"/></td>
                            </tr>
                            <tr>
                                <th>联系方式</th>
                                <td><input type="text" name="tel" class="form-control" id="tel-1"/></td>
                            </tr>

                        </table>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" id="button1-1" class="btn btn-primary" onclick="saveeditUser()">Save changes
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 全局js -->

<script src="../../resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../../resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="../../resources/js/plugins/layer/layer.min.js"></script>

<!-- 第三方插件 -->
<script src="../../resources/js/plugins/pace/pace.min.js"></script>

</body>
</body>
</html>
