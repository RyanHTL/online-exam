<%@ page import="com.exam.demain.Student" %><%--
  Created by IntelliJ IDEA.
  User: XDEcat
  Date: 2020/1/1
  Time: 23:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>题库</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="../../resources/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="../../resources/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <link href="../../resources/css/animate.css" rel="stylesheet">
    <link href="../../resources/css/style.css?v=4.1.0" rel="stylesheet">
<script>
    <% Student student = (Student) request.getSession().getAttribute("loginuser");

    %>
</script>

</head>

<body class="gray-bg">

<div class="wrapper wrapper-content animated fadeInUp">
    <div class="row">
        <div class="col-sm-12">

            <div class="ibox">
                <div class="ibox-title">
                    <h5>题库管理</h5>
                    <div class="ibox-tools">
                        <button type="button" data-toggle="modal" data-target="#myModal-1"><i
                                class="glyphicon glyphicon-plus-sign"></i>
                            创建试卷
                        </button>
                    </div>
                </div>
                <div class="ibox-content">
                    <div class="row m-b-sm m-t-sm">
                        <div class="col-md-1">
                            <button type="button" id="loading-example-btn" class="btn btn-white btn-sm"><i class="fa fa-refresh"></i> 刷新</button>
                        </div>
                        <div class="col-md-11">
                            <div class="input-group">
                                <input type="text" placeholder="请输入题库名称" class="input-sm form-control"> <span class="input-group-btn">
                                <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                            </div>
                        </div>
                    </div>
                    <div class="project-list">
                        <ul class="nav" id="side-menu">
                            <li>
                                <a href="#">
                                    <i class="fa fa fa-bar-chart-o"></i>
                                    <span class="nav-label">单选题</span>
                                    <span class="fa arrow"></span>
                                </a>
                                <ul class="nav nav-second-level">
                                    <li>

                                        <table class="table table-hover" id="tb_1" >

                                        </table>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa fa-bar-chart-o"></i>
                                    <span class="nav-label">多选题</span>
                                    <span class="fa arrow"></span>
                                </a>
                                <ul class="nav nav-second-level">
                                    <li>

                                        <table class="table table-hover" id="tb_2">
                                            <tbody>

                                            </tbody>
                                        </table>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                </div>
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
                    <table class="table table-hover table-bordered">
                        <tr>
                            <th>试卷名</th>
                            <td colspan="3"><input type="text" name="title" class="form-control" id="title"/></td>
                        </tr>
                        <tr>
                            <th>课程id</th>
                            <td colspan="3"><input type="text" name="courseid" class="form-control" id="courseid"/></td>
                        </tr>
                        <tr>
                            <th>班级</th>
                            <td colspan="3"><input type="text" name="clazz" class="form-control" id="clazz"/></td>
                        </tr>
                        <tr>
                            <th>时间(min)</th>
                            <td colspan="3"><input type="text" name="time" class="form-control" id="time"/></td>
                        </tr>
                        <tr>
                            <th>单选数量</th>
                            <td><input type="text" name="single" class="form-control" id="single"/></td>
                            <th>分值</th>
                            <td><input type="text" name="single-1" class="form-control" id="single-1"/></td>
                        </tr>
                        <tr>
                            <th>多选数量</th>
                            <td><input type="text" name="multiple" class="form-control" id="multiple"/></td>
                            <th>分值</th>
                            <td><input type="text" name="multiple-1" class="form-control" id="multiple-1"/></td>
                        </tr>


                    </table>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" id="button1-1" class="btn btn-primary" onclick="savePaper()">Save Paper
                </button>
            </div>
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
<!-- 自定义js -->
<script src="../../resources/js/content.js?v=1.0.0"></script>
<script src="../../resources/js/hAdmin.js?v=4.1.0"></script>
<script type="../../resources/text/javascript" src="js/index.js"></script>
<!-- 第三方插件 -->
<script src="../../resources/js/plugins/pace/pace.min.js"></script>


<script>
    function savePaper() {
        var title1=$("#title").val()
        var courseid= $("#courseid").val();
        var clazz = $("#clazz").val();
        var time = $("#time").val();
        var single = $("#single").val();
        var single1 = $("#single-1").val();
        var multiple = $("#multiple").val();
        var multiple1 = $("#multiple-1").val();


        console.log(title1+" "+courseid+" "+clazz+" "+time+" "+single+" "+single1+" "+multiple+" "+multiple1);
        $.ajax({
            url: "${pageContext.request.contextPath}/teacherController/addPaper",//获取数据的URL
            data:{"single":single,
                "singlescore":single1,
                "multiple":multiple,
                "multiplescore":multiple1,
                "title":title1,
                "courseid": courseid,
                "classid":clazz,
                "keeptime":time*60,
                "teacherid":<%=student.getId() %>,
                "createuser":<%=student.getId() %>
            },//前端将数据给后端
            type: "POST",//HTTP请求方法
            dataType : 'JSON',//获取数据执行方式
            success:function(data){
                if(data===1){//传入为JSON对象格式
                    alert('添加成功');
                    $("#myModal-1").modal("hide");
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


    $(document).ready(function(){

        $('#loading-example-btn').click(function () {
            btn = $(this);
            simpleLoad(btn, true)

            // Ajax example
//                $.ajax().always(function () {
//                    simpleLoad($(this), false)
//                });

            simpleLoad(btn, false)
        });
    });

    function simpleLoad(btn, state) {
        if (state) {
            btn.children().addClass('fa-spin');
            btn.contents().last().replaceWith(" Loading");
        } else {
            setTimeout(function () {
                btn.children().removeClass('fa-spin');
                btn.contents().last().replaceWith(" Refresh");
            }, 2000);
        }
    }
    $(function () {

        // alert(id);
        var html = '';
        $.ajax({
            url: "/teacherController/selectAllTest",
            type: "post",
            data:{},
            dataType: "json",
            success: function (data) {

                console.log(data);

                var type1=[];//单选
                var type2=[];//多选
                var name1=[];
                var name2=[];
                for(i in data){
                    if(data[i].type==0){
                        type1.push(data[i]);
                        name1.push(data[i].name);
                    }
                    else if(data[i].type==1){
                        type2.push(data[i]);
                        name2.push(data[i].name);
                    }
                }
                console.log(name1);
                var arr1=[];    //定义一个临时数组
                for(var i = 0; i < name1.length; i++){    //循环遍历当前数组
                    //判断当前数组下标为i的元素是否已经保存到临时数组
                    //如果已保存，则跳过，否则将此元素保存到临时数组中
                    if(arr1.indexOf(name1[i]) == -1){
                        arr1.push(name1[i]);
                    }
                }
                var arr2=[];    //定义一个临时数组
                for(var i = 0; i < name2.length; i++){    //循环遍历当前数组
                    //判断当前数组下标为i的元素是否已经保存到临时数组
                    //如果已保存，则跳过，否则将此元素保存到临时数组中
                    if(arr2.indexOf(name2[i]) == -1){
                        arr2.push(name2[i]);
                    }
                }
                for(i in arr1){
                    x="<tr><td class='project-status'><span class='label label-primary'>" +
                        "进行中</span></td><td class='project-title'>" +
                        "<a href='#'>"+arr1[i]+"题库</a>" +
                        "</td><td class='project-actions'><a href='/jumpController/single_choice?coursename="+arr1[i]+"' class='btn btn-white btn-sm'>" +
                        "<i class='fa fa-folder'></i> 查看 </a></td></tr>"
                    $("#tb_1").append(x);
                }
                for(i in arr2){
                    x="<tr><td class='project-status'><span class='label label-primary'>" +
                        "进行中</span></td><td class='project-title'>" +
                        "<a href='#'>"+arr2[i]+"题库</a>" +
                        "</td><td class='project-actions'><a href='/jumpController/mult_choice?coursename="+arr2[i]+"' class='btn btn-white btn-sm'>" +
                        "<i class='fa fa-folder'></i> 查看 </a></td></tr>"
                    $("#tb_2").append(x);
                }


            }

        });


    });

</script>



</body>
</html>

