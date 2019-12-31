<%--
  Created by IntelliJ IDEA.
  User: 海神阁
  Date: 2019/12/31
  Time: 8:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../../resources/css/bootstrap-table.css" rel="stylesheet">



    <link href="../../resources/css/bootstrap.min.css" media="screen" rel="stylesheet" type="text/css"/>
    <link href="../../resources/css/bootstrap.addtabs.css" media="screen" rel="stylesheet" type="text/css"/>

    <script src="../../resources/js/bootstrap.addtabs.js">

    </script>
    <script src="../../resources/js/jquery.min.js">
    </script>
    <script src="../../resources/js/bootstrap.min.js"></script>
    <title>Title</title>
    <script>
        $(document).ready(function () {
            var x=" ";
            // var users = [
            //     { "id":"1","name":"roob" ,"password":"123" ,"isAdmin":"1"},
            //     { "id":"2","name":"goog" , "password":"456" ,"isAdmin":"0"},
            // ];
            var students = [
                { "stu_id":"179000504","stu_name":"张剑君" ,"clazz":"1790005" ,"grade":"17级","tel":"15324"},
                { "stu_id":"179000501","stu_name":"张君" ,"clazz":"1890005" ,"grade":"18级","tel":"15324"},
            ];
            // for (i in users) {
            //   x="<tr><td>" +"<input type='checkbox'/>"+ "</td>"+"<td>"+users[i].id+"</td>"+"<td>" +users[i].name+ "</td>"+"<td>" +users[i].password + "</td>"+"<td>" +users[i].isAdmin + "</td></tr>";
            //     $("#tb").append(x);
            // }
            for (i in students) {
                x="<tr><td>" +"<input type='checkbox'/>"+ "</td>"+"<td>"+students[i].stu_id+"</td>"+"<td>" +students[i].stu_name+ "</td>"+"<td>" +students[i].clazz + "</td>"+"<td>" +students[i].grade+ "</td>"+"<td>" +students[i].tel + "</td></tr>";
                $("#tb").append(x);
            }
        })
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
        function saveUser() {
            $.ajax({
                url: "http//:wwww.baidu.com",//获取数据的URL
                data:$(".fm").serialize(),//前端将数据给后端
                type: "POST",//HTTP请求方法
                dataType : 'JSON',//获取数据执行方式
                success:function(data){
                    if(data.status == 'True'){//传入为JSON对象格式
                        alert('连接成功');
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

        function editUser(){//data-toggle="modal"  data-target="#myModal-1"    //模态框
            var vals = [];
            // var x=0;//记录选中的数据下标值，从0开始
            $('input:checkbox:checked').each(function (index, item) {
                    vals.push($(this).val());
                }
            );
            if(vals.length<1||vals.length>=2) {
                $("#editButton").removeAttr("data-target");

                //$("editButton").removeAttr("data-target");
                alert("请选择一条数据");
            } else {
                //回显数据
                var stu_Arr=new Array();
                var i=0;
                $('input:checkbox:checked').parent().siblings().each(function (index) {
                    //userArr[i++].push($(this).val());
                    stu_Arr[i++]=$(this).text()
                    //alert($(this).text());
                })//id="username-1"
                // $("#myModal-1").find("input").each(function () {
                //     if($(this)[i])
                // })
                //var y=userArr[1];
                $("input[id='stu_id-1']").val(stu_Arr[0]);
                $("input[id='stu_name-1']").val(stu_Arr[1]);
                $("input[id='clazz-1']").val(stu_Arr[2]);
                $("input[id='grade-1']").val(stu_Arr[3]);
                $("input[id='tel-1']").val(stu_Arr[4]);
                //数据显示在模态框
                $("#editButton").attr("data-target","#myModal-1");

            }
        };
        //删除用户
        function deleteUser() {
            var vals = [];
            $('input:checkbox:checked').each(function (index, item) {
                    vals.push($(this).val());
                }
            );
            if(vals.length<1) {
                //$("#editButton").removeAttr("data-target");

                //$("editButton").removeAttr("data-target");
                alert("请至少选择一条数据");
            }
            else{
                var stu_Arr=new Array();
                var i=0;
                $('input:checkbox:checked').parent().siblings().each(function (index) {
                    //userArr[i++].push($(this).val());
                    stu_Arr[i++]=$(this).text()
                    //alert($(this).text());
                })//id="username-1"
                // $("#myModal-1").find("input").each(function () {
                //     if($(this)[i])
                // })
                //var y=userArr[1];
                alert("要删除数据的id为："+stu_Arr[0]);

            }

        }
        $(document).ready(function () {
            $('.dataTables-example').dataTable();

            /* Init DataTables */
            var oTable = $('#editable').dataTable();

            /* Apply the jEditable handlers to the table */
            oTable.$('td').editable('../example_ajax.php', {
                "callback": function (sValue, y) {
                    var aPos = oTable.fnGetPosition(this);
                    oTable.fnUpdate(sValue, aPos[0], aPos[1]);
                },
                "submitdata": function (value, settings) {
                    return {
                        "row_id": this.parentNode.getAttribute('id'),
                        "column": oTable.fnGetPosition(this)[2]
                    };
                },

                "width": "90%",
                "height": "100%"
            });


        });

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
                        <li role="presentation" class="active" >
                            <button type="button"  data-toggle="modal" data-target="#myModal" ><i class="glyphicon glyphicon-plus-sign"></i>
                                新增
                            </button>
                        </li>
                        <li role="presentation"class="active">
                            <button id="editButton" onclick="editUser()" type="button" data-toggle="modal"><i class="glyphicon glyphicon-edit"></i>
                                修改
                            </button>
                        </li>
                        <li role="presentation"class="active">
                            <button id="deleteButton" onclick="deleteUser()" type="button"  data-toggle="modal"><i class="glyphicon glyphicon-remove"></i>
                                删除
                            </button>
                        </li>

                    </ul>
                </div>

                <div class="ibox-content">
                    <table class="table table-striped table-bordered table-hover  dataTables-example" id="tb" >
                        <tr>
                            <th>选中</th><th>学号</th><th>姓名</th><th>班级</th><th>年级</th><th>联系方式</th>
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
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h2 class="modal-title" id="myModalLabel">新增用户信息</h2>
                </div>
                <div class="modal-body">
                    <form class="fm">
                        <table class="table table-hover table-bordered">
                            <tr>
                                <th>学号</th>
                                <td><input type="text" name="stu_id" class="form-control" id="stu_id" /></td>
                            </tr>
                            <tr>
                                <th>姓名</th>
                                <td><input type="text" name="stu_name" class="form-control" id="stu_name" /></td>
                            </tr>
                            <tr>
                                <th>班级</th>
                                <td><input type="text" name="clazz" class="form-control" id="clazz" /></td>
                            </tr>
                            <tr>
                                <th>年级</th>
                                <td><input type="text" name="grade" class="form-control" id="grade" /></td>
                            </tr>
                            <tr>
                                <th>联系方式</th>
                                <td><input type="text" name="tel" class="form-control" id="tel" /></td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" id="button1" class="btn btn-primary" onclick="saveUser()" >Save changes</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal 编辑模态框-->
    <div class="modal fade" id="myModal-1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel-1">编辑用户信息</h4>
                </div>
                <div class="modal-body">
                    <form class="fm">
                        <table class="table table-hover table-bordered">
                            <tr>
                                <th>学号</th>
                                <td><input type="text" name="stu_id" class="form-control" id="stu_id-1" /></td>
                            </tr>
                            <tr>
                                <th>姓名</th>
                                <td><input type="text" name="stu_name" class="form-control" id="stu_name-1" /></td>
                            </tr>
                            <tr>
                                <th>班级</th>
                                <td><input type="text" name="clazz" class="form-control" id="clazz-1" /></td>
                            </tr>
                            <tr>
                                <th>年级</th>
                                <td><input type="text" name="grade" class="form-control" id="grade-1" /></td>
                            </tr>
                            <tr>
                                <th>联系方式</th>
                                <td><input type="text" name="tel" class="form-control" id="tel-1" /></td>
                            </tr>

                        </table>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" id="button1-1" class="btn btn-primary" onclick="saveUser()" >Save changes</button>
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
</html>
