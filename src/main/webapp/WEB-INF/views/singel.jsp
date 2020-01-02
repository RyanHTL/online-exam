<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <link rel="stylesheet" href="../../resources/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">

    

    
    <link href="../../resources/css/bootstrap.addtabs.css" media="screen" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
	<script src="../../resources/js/jquery.min.js"></script>
	<script src="../../resources/js/bootstrap.min.js"></script>
    
    <script src="../../resources/js/bootstrap.addtabs.js">
    </script>
    
    
    
	
    <title>Title</title>
    
</head>
<body>
<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
    <!--工具栏-->

		<div class="row">
			<div class="col-sm-10 col-md-push-1">
				<div class="ibox float-e-margins" style=" " >
                    <div class="toolbar" style=" height: 20px;">

						<ul class="nav nav-pills">
							<li role="presentation" class="active" >
								<button  class="btn" type="button"  data-toggle="modal" data-target="#myModal" ><i class="glyphicon glyphicon-plus-sign"></i>
								新增
								</button>
							</li>
							<li role="presentation"class="active">
								<button  class="btn" id="editButton" onclick="editUser()" type="button" data-toggle="modal"><i class="glyphicon glyphicon-edit"></i>
								修改
								</button>
							</li>
							<li role="presentation"class="active">
								<button  class="btn" id="deleteButton" onclick="deleteUser()" type="button"  data-toggle="modal"><i class="glyphicon glyphicon-remove"></i>
								删除
								</button>
                            </li>
                            <li role="presentation"class="active">
                               <input id="testss" type="file" class="btn">

                            </li>
                            <li role="presentation"class="active">
                                <button  class="btn" id="postIt" onclick="save()" type="button"  data-toggle="modal"><i class="glyphicon glyphicon-remove"></i>
                                    提交
                                </button>
                            </li>

						</ul>
					</div>
					
					<div class="ibox-content" >
								<table class="table table-striped table-bordered table-hover  dataTables-example" id="tb" >
									<tr>
										<th class="col-md-1">选中</th><th class="col-md-1">题号</th><th class="col-md-3">题目</th><th class="col-md-1">选项A</th ><th class="col-md-1">选项B</th><th  class="col-md-1">选项C</th><th class="col-md-1">选项D</th ><th class="col-md-1" id="selectE">选项E</th><th class="col-md-1">答案</th>
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
									<th>题号</th>
									<td><input type="text" name="id" class="form-control" id="id" /></td>
								</tr>
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
									<th>答案</th>
									<td><input type="text" name="answer" class="form-control" id="answer" /></td>
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
                                <td><input type="text" name="d-1" class="form-control" id="e-1" /></td>
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
    <script src="https://cdn.bootcss.com/xlsx/0.15.1/xlsx.core.min.js"></script>
    
    
</body>
<script>

    var question = []; // 存储获取到的数据
    function save() {
        let nm = 0
        let dataa =new Array();
        var stu_Arr1=new Array();
        $('input:checkbox:checked').parent().siblings().each(function (index) {
            //userArr[i++]

            stu_Arr1[nm++]=$(this).text()

        })
        let nmbd = 0;
        if (stu_Arr1.length===0){
            dataa[0]=question
        }
        else {for (ii in stu_Arr1) {
            if (ii % 8 === 0) {
                dataa[nmbd++]=question[stu_Arr1[ii]]
                console.log(question[stu_Arr1[ii]])
            }

        }}

        console.log(dataa)
        $.ajax({
            url: "${pageContext.request.contextPath}/teacherController/saveQuestions",//获取数据的URL
            data: {data:JSON.stringify(dataa)},//前端将数据给后端
            type: "POST",//HTTP请求方法
            dataType : 'json',//获取数据执行方式
            success:function(data){
                if(data >= 1){//传入为JSON对象格式
                    alert('插入成功');
                    $("#myModal-1").hidden;
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


    $('#testss').change(function (e) {
        console.log("执行了")
        var files = e.target.files;
    
        var fileReader = new FileReader();
        fileReader.onload = function(ev) {
                try {
                    var data = ev.target.result,
                        workbook = XLSX.read(data, {
                            type: 'binary'
                        }) // 以二进制流方式读取得到整份excel表格对象

                } catch (e) {
                    console.log('文件类型不正确');
                    return;
                }
    
                // 表格的表格范围，可用于判断表头是否数量是否正确
                var fromTo = '';
                // 遍历每张表读取
                for (var sheet in workbook.Sheets) {
                    if (workbook.Sheets.hasOwnProperty(sheet)) {
                        fromTo = workbook.Sheets[sheet]['!ref'];
                        console.log(fromTo);
                        question = question.concat(XLSX.utils.sheet_to_json(workbook.Sheets[sheet]));
                        // break; // 如果只取第一张表，就取消注释这行
                    }
                }
                
                if (question != null) {
                    
                    

                    $('#tb').add(function(){
                        //var s = "";
                        // for(var i = 0; i < question.length; i++) {
                        // let temp="table"+i;
                        // s = "<tr id="+temp+"><td>" +i+"</td><td>"+ question[i].title + "</td><td>" + question[i].selectA + "</td><td>" +
                        //     question[i].selectB + "</td><td>"+question[i].selectC + 
                        //     "</td><td>"+question[i].selectD + "</td><td>"+question[i].selectE+"</td><td>"+question[i].anwser
                        //     +"</td></tr>";
                        // $("#table").append(s);
                        // }s
                        console.log("开始改变");
                        
                        for (i in question) {
                            // for(xx in question[i]){
                            //     // console.log(xx)
                            //     if (xx===undefined) {
                            //
                            //     //更改属性值
                            //     delete question[i].selectE;
                            //     question[i].selectE = "asda"
                            //     }
                            // }

                            
                            s = "<tr><td>" +"<input type='checkbox'/>"+"</td><td>"+i+"</td><td>"+ question[i].title + "</td><td>" + question[i].selectA + "</td><td>" +
                            question[i].selectB + "</td><td>"+question[i].selectC + 
                            "</td><td>"+question[i].selectD + "</td><td>"+question[i].selectE+"</td><td>"+question[i].anwser
                            +"</td></tr>";
                            
                            $("#tb").append(s);
                            }
                    })
                }
                
            };
    
            // 以二进制方式打开文件
            fileReader.readAsBinaryString(files[0]);
    })

    function editUser(){//data-toggle="modal"  data-target="#myModal-1"    //模态框
        var vals = [];
       // var x=0;//记录选中的数据下标值，从0开始
        $('input:checkbox:checked').each(function (index, item) {
            vals.push($(this).val());
        }
        );
        if(vals.length<1) {
            $("#editButton").removeAttr("data-target");

            //$("editButton").removeAttr("data-target");
            alert("请选择一条数据");
        } else {
            //回显数据
            var stu_Arr=new Array();
            let stu_Arr1= new Map();
            let id_Arr = new Array();
            var i = 0
            $('input:checkbox:checked').parent().siblings().each(function (index) {
                //userArr[i++].push($(this).val());
                
                stu_Arr[i++]=$(this).text()
                
               
                //alert($(this).text());
            })//id="username-1"
            // $("#myModal-1").find("input").each(function () {
            //     if($(this)[i])
            // })
            //var y=userArr[1];

            $("input[id='id-1']").val(stu_Arr[0]);
            $("input[id='title-1']").val(stu_Arr[1]);
            $("input[id='a-1']").val(stu_Arr[2]);
            $("input[id='b-1']").val(stu_Arr[3]);
            $("input[id='c-1']").val(stu_Arr[4]);
            $("input[id='d-1']").val(stu_Arr[5]);
            
            $("input[id='e-1']").val(stu_Arr[6]);
            $("input[id='answer-1']").val(stu_Arr[7]);
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
   

</script>
</html>


