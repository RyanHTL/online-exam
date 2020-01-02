<%--
  Created by IntelliJ IDEA.
  User: XDEcat
  Date: 2020/1/2
  Time: 8:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="../../resources/css/bootstrap-table.css" rel="stylesheet" type="text/html">



    <link href="../../resources/css/bootstrap.min.css" media="screen" rel="stylesheet" type="text/css"/>



    <script src="../../resources/js/jquery.min.js">
    </script>
    <script src="../../resources/js/bootstrap.min.js"></script>

    <title>Title</title>
    <script>
        function GetRequest() {
            var url = location.search; //获取url中"?"符后的字串
            var theRequest = new Object();
            if (url.indexOf("?") != -1) {
                var str = url.substr(1);
                strs = str.split("&");
                for (var i = 0; i < strs.length; i++) {
                    theRequest[strs[i].split("=")[0]] = decodeURIComponent(strs[i].split("=")[1]);
                }
            }
            return theRequest;
        }
        $(function(){
            var a=GetRequest();
            var coursename=a['coursename'];
            console.log(coursename);


            // alert(id);
            var html = '';
            $.ajax({
                url: "${pageContext.request.contextPath}/teacherController/selectAllTest",
                type: "post",
                data: {},
                dataType: "json",
                success: function (words) {
                    var acc=[];
                    for (i in words) {
                        if(words[i].type==1&&words[i].name==coursename){
                            x="<tr><td>" +"<input type='checkbox'/>"+ "</td>"+"<td>"+words[i].id+"</td>"+"<td>" +words[i].title+ "</td>"+"<td>" +words[i].selectA+ "</td>"+"<td>" +words[i].selectB + "</td>"+"<td>" +words[i].selectC+ "</td>"+"<td>" +words[i].selectD+ "</td>"+"<td>" +words[i].selectE+ "</td>"+"<td>" +words[i].anwser+ "</td></tr>";
                            $("#tb").append(x);
                            acc.push(words[i].courseid);

                        }

                    }
                    var arr1=[];    //定义一个临时数组
                    for(var i = 0; i < acc.length; i++){    //循环遍历当前数组
                        //判断当前数组下标为i的元素是否已经保存到临时数组
                        //如果已保存，则跳过，否则将此元素保存到临时数组中
                        if(arr1.indexOf(acc[i]) == -1){
                            arr1.push(acc[i]);
                        }
                    }
                    console.log(arr1);
                    $("#t_type").append(coursename);
                    $("#c_id").val(arr1[0]);



                }
            });
        });

        function saveeditWords() {
            var id = $("#id-1").val();
            var title = $("#title-1").val();
            var a = $("#a-1").val();
            var b = $("#b-1").val();
            var c = $("#c-1").val();
            var d = $("#d-1").val();
            var e = $("#e-1").val();
            var answer = $("#answer-1").val();

            console.log(id+" "+title+" "+a+" "+b+" "+c+" "+d+" "+e+" "+answer);
            $.ajax({
                url: "${pageContext.request.contextPath}/teacherController/updateAllTest",//获取数据的URL
                data:{"id":id,"title":title,"a":a,"b":b,"c":c,"d":d,"e":e,"answer":answer},//前端将数据给后端
                type: "POST",//HTTP请求方法
                dataType : 'JSON',//获取数据执行方式
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
                    alert('连接失败');
                }
            });
        }
        function editWords(){//data-toggle="modal"  data-target="#myModal-1"    //模态框
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
                var ws_Arr=new Array();
                var i=0;
                $('input:checkbox:checked').parent().siblings().each(function (index) {
                    //userArr[i++].push($(this).val());
                    ws_Arr[i++]=$(this).text()
                    //alert($(this).text());
                })//id="username-1"
                // $("#myModal-1").find("input").each(function () {
                //     if($(this)[i])
                // })
                //var y=userArr[1];
                $("input[id='id-1']").val(ws_Arr[0]);
                $("input[id='title-1']").val(ws_Arr[1]);
                $("input[id='a-1']").val(ws_Arr[2]);
                $("input[id='b-1']").val(ws_Arr[3]);
                $("input[id='c-1']").val(ws_Arr[4]);
                $("input[id='d-1']").val(ws_Arr[5]);
                $("input[id='e-1']").val(ws_Arr[6]);
                $("input[id='answer-1']").val(ws_Arr[7]);
                //数据显示在模态框
                $("#editButton").attr("data-target","#myModal-1");

            }
        };
        //删除用户
        function deleteWords() {
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
                var w_Arr=new Array();
                var i=0;
                $('input:checkbox:checked').parent().siblings().each(function (index) {
                    //userArr[i++].push($(this).val());
                    w_Arr[i++]=$(this).text()
                    //alert($(this).text());
                })//id="username-1"
                // $("#myModal-1").find("input").each(function () {
                //     if($(this)[i])
                // })
                //var y=userArr[1];
                alert("要删除数据的id为："+w_Arr[0]);
                $.ajax({
                    url: "${pageContext.request.contextPath}/teacherController/deleteTest",//获取数据的URL
                    data:{"id":w_Arr[0]},//前端将数据给后端

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
        function saveWords() {
            var courseid=$("#c_id").val()
            var title = $("#title").val();
            var a = $("#a").val();
            var b = $("#b").val();
            var c = $("#c").val();
            var d = $("#d").val();
            var e = $("#e").val();
            var answer = $("#answer").val();

            console.log(courseid+" "+title+" "+a+" "+b+" "+c+" "+d+" "+e+" "+answer);
            $.ajax({
                url: "${pageContext.request.contextPath}/teacherController/insertTest",//获取数据的URL
                data:{"id":courseid,"title":title,"a":a,"b":b,"c":c,"d":d,"e":e,"answer":answer,"type":1},//前端将数据给后端
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

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight" style="text-align: center;>
    <!--工具栏-->

	<div  class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="toolbar" style="height: 20px;">
                    <h5 id="t_type">多选题:</h5>
                    <ul class="nav nav-pills">
                        <li role="presentation" class="active" >
                            <button type="button"  data-toggle="modal" data-target="#myModal" ><i class="glyphicon glyphicon-plus-sign"></i>
                                新增
                            </button>
                        </li>
                        <li role="presentation"class="active">
                            <button id="editButton" onclick="editWords()" type="button" data-toggle="modal"><i class="glyphicon glyphicon-edit"></i>
                                修改
                            </button>
                        </li>
                        <li role="presentation"class="active">
                            <button id="deleteButton" onclick="deleteWords()" type="button"  data-toggle="modal"><i class="glyphicon glyphicon-remove"></i>
                                删除
                            </button>
                        </li>

                    </ul>
                </div>

                <div class="ibox-content">
                    <table class="table table-striped table-bordered table-hover dataTables-example" id="tb" >
                        <tr>
                            <th>选中</th><th>题号</th><th>题目</th><th>选项A</th><th>选项B</th><th>选项C</th><th>选项D</th><th>选项E</th><th>答案</th>
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
                <h2 class="modal-title" id="myModalLabel">增加题</h2>
            </div>
            <div class="modal-body">
                <form class="fm">
                    <input id="c_id" type="hidden"/>
                    <table class="table table-hover table-bordered">

                        <tr>
                            <th>题目</th>
                            <td><input type="text" name="title" class="form-control" id="title" /></td>
                        </tr>
                        <tr>
                            <th>选项A</th>
                            <td><input type="text" name="a" class="form-control" id="a" /></td>
                        </tr>
                        <tr>
                            <th>选项B</th>
                            <td><input type="text" name="b" class="form-control" id="b" /></td>
                        </tr>
                        <tr>
                            <th>选项C</th>
                            <td><input type="text" name="c" class="form-control" id="c" /></td>
                        </tr>
                        <tr>
                            <th>选项D</th>
                            <td><input type="text" name="d" class="form-control" id="d" /></td>
                        </tr>
                        <tr>
                            <th>选项E</th>
                            <td><input type="text" name="e" class="form-control" id="e" /></td>
                        </tr>
                        <tr>
                            <th>答案</th>
                            <td><input type="text" name="answer" class="form-control" id="answer" /></td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" id="button1" class="btn btn-primary" onclick="saveWords()" >Save changes</button>
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
                <h4 class="modal-title" id="myModalLabel-1">编辑题</h4>
            </div>
            <div class="modal-body">
                <form class="fm">
                    <table class="table table-hover table-bordered">
                        <tr>
                            <th>题号</th>
                            <td><input type="text" name="id-1" class="form-control" id="id-1"  readonly="readonly"/></td>
                        </tr>
                        <tr>
                            <th>题目</th>
                            <td><input type="text" name="title-1" class="form-control" id="title-1" /></td>
                        </tr>
                        <tr>
                            <th>选项A</th>
                            <td><input type="text" name="a-1" class="form-control" id="a-1" /></td>
                        </tr>
                        <tr>
                            <th>选项B</th>
                            <td><input type="text" name="b-1" class="form-control" id="b-1" /></td>
                        </tr>
                        <tr>
                            <th>选项C</th>
                            <td><input type="text" name="c-1" class="form-control" id="c-1" /></td>
                        </tr>
                        <tr>
                            <th>选项D</th>
                            <td><input type="text" name="d-1" class="form-control" id="d-1" /></td>
                        </tr>
                        <tr>
                            <th>选项E</th>
                            <td><input type="text" name="e-1" class="form-control" id="e-1" /></td>
                        </tr>
                        <tr>
                            <th>答案</th>
                            <td><input type="text" name="answer-1" class="form-control" id="answer-1" /></td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" id="button1-1" class="btn btn-primary" onclick="saveeditWords()" >Save changes</button>
            </div>
        </div>
    </div>
</div>
<input type=button value=返回 onclick="window.history.go(-1)">
</div>
<!-- 全局js -->

<script src="../../resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../../resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="../../resources/js/plugins/layer/layer.min.js"></script>

<!-- 第三方插件 -->
<script src="../../resources/js/plugins/pace/pace.min.js"></script>

</body>
</html>



