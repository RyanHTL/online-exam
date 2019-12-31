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
    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<table id="table" class="table table-hover">
    <tr>
        <th>#</th>
        <th>id</th>
        <th>title</th>
        <th>A</th>
        <th>B</th>
        <th>C</th>
        <th>D</th>
        <th>E</th>
        <th>答案</th>
    </tr>
</table>

<div class="btn-group btn-group-lg" role="group" aria-label="..." onclick="show()">aaaaaa</div>
<%--<table id="table"></table>--%>

<script src="../../resources/js/jquery-3.4.1.min.js"></script>
<script src="../../resources/js/bootstrap.min.js"></script>
<script src="../../resources/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script type="text/javascript">

    $(window).on('load',function(){
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/studentController/selectparper",
            data: {'id':1},
            dataType:'json',
            success: function (data) {
                // dataStr = JSON.stringify(data);
                // data = $.parseJSON(dataStr);
                // alert(dataStr);
                console.log(data)
                var table=document.getElementById("table");
                for(var i=0;i<data.length;i++){
                    var row=table.insertRow(table.rows.length);
                    var c0 = row.insertCell(0);
                    c0.innerHTML = "<input type=\"checkbox\" value=" +data[i]+">";
                    var c1=row.insertCell(1);
                    c1.innerHTML=i+1;

                    var c2=row.insertCell(2);
                    c2.innerHTML=data[i].title;

                    console.log(data[i].choosees);
                    var choosees = data[i].choosees;
                    var c3=row.insertCell(3);
                    c3.innerHTML= choosees.a;
                    var c4=row.insertCell(4);
                    c4.innerHTML= choosees.b;
                    var c5=row.insertCell(5);
                    c5.innerHTML= choosees.c;
                    var c6=row.insertCell(6);
                    c6.innerHTML= choosees.d;
                    var c7=row.insertCell(7);
                    if(choosees.e == undefined){
                        c7.innerHTML= "";
                    }else {
                        c7.innerHTML= choosees.e;
                    }
                    var c8=row.insertCell(8);
                    c8.innerHTML= data[i].answer;
                }
            }
        });
    });

    function  show() {
        var getSelectRows = $("#table").bootstrapTable('getSelections', function (row) { return row; });
        for (var i = 0; i < getSelectRows.length; i++) {
            console.log(getSelectRows[i])
        }
    }




</script>

</body>
</html>
