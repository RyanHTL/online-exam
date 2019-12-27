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


    <title> - 数据表格</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="../../resources/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="../../resources/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <!-- Data Tables -->
    <link href="../../resources/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">

    <link href="../../resources/css/animate.css" rel="stylesheet">
    <link href="../../resources/css/style.css?v=4.1.0" rel="stylesheet">

    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>
    <style>
        .bk{
            box-shadow: 2px 2px 3px rgba(150, 149, 150, 0.397);
            margin-top:20px;
        }
    </style>
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row ">
        <h2 class="col-md-8 col-md-push-1" style="text-align: center;">
            在线测试
        </h2>
    </div>
    <div class="row">
        <div class=" row col-md-8 col-md-push-1" >
            <form method="post">


                <div class="row bk"><h2>选择题</h2>
                    <div>
                        <h5>
                            <p>1、在边界值分析中，哪个数据通常不用来做数据测试</p></br>
                            <div>&nbsp;&nbsp;<label><input name="dx1" type="radio" value="1" />&nbsp;A、</label>1</div>
                            <div>&nbsp;&nbsp;<label><input name="dx1" type="radio" value="2" />&nbsp;B、</label>2</div>
                            <div>&nbsp;&nbsp;<label><input name="dx1" type="radio" value="3" />&nbsp;C、</label>3</div>
                            <div>&nbsp;&nbsp;<label><input name="dx1" type="radio" value="4" />&nbsp;D、</label>4</div>
                        </h5>
                        </br>
                        <h5>
                            <p>1、在边界值分析中，哪个数据通常不用来做数据测试</p></br>
                            <div>&nbsp;&nbsp;<label><input name="dx2" type="radio" value="1" />&nbsp;A、</label>1</div>
                            <div>&nbsp;&nbsp;<label><input name="dx2" type="radio" value="2" />&nbsp;B、</label>2</div>
                            <div>&nbsp;&nbsp;<label><input name="dx2" type="radio" value="3" />&nbsp;C、</label>3</div>
                            <div>&nbsp;&nbsp;<label><input name="dx2" type="radio" value="4" />&nbsp;D、</label>4</div>
                        </h5>
                        </br>
                        <h5>
                            <p>1、在边界值分析中，哪个数据通常不用来做数据测试</p></br>
                            <div>&nbsp;&nbsp;<label><input name="dx3" type="radio" value="1" />&nbsp;A、</label>1</div>
                            <div>&nbsp;&nbsp;<label><input name="dx3" type="radio" value="2" />&nbsp;B、</label>2</div>
                            <div>&nbsp;&nbsp;<label><input name="dx3" type="radio" value="3" />&nbsp;C、</label>3</div>
                            <div>&nbsp;&nbsp;<label><input name="dx3" type="radio" value="4" />&nbsp;D、</label>4</div>
                        </h5>
                        </br>
                    </div>
                </div>
                <div class="row bk"><h2>多选题</h2>
                    <div>
                        <h5>
                            <p>1、遇有（ ）或风力在5级及以上恶劣天气时，一般不进行V形天窗作业。若必须利用 V形天窗进行检修和故障处理或事故抢修时，应增设接地线，并在加强监护的情况下方准作业。</p></br>
                            <div>&nbsp;&nbsp;<label><input name="dux1" type="checkbox" value="雨" />&nbsp;A、</label>雨</div>
                            <div>&nbsp;&nbsp;<label><input name="dux1" type="checkbox" value="雪" />&nbsp;B、</label>雪</div>
                            <div>&nbsp;&nbsp;<label><input name="dux1" type="checkbox" value="雾" />&nbsp;C、</label>雾</div>
                            <div>&nbsp;&nbsp;<label><input name="dux1" type="checkbox" value="较热天气" />&nbsp;D、</label>较热天气</div>
                            <div>&nbsp;&nbsp;<label><input name="dux1" type="checkbox" value="炎热天气" />&nbsp;E、</label>炎热天气</div>
                        </h5>
                        </br>
                        <h5>
                            <p>1、遇有（ ）或风力在5级及以上恶劣天气时，一般不进行V形天窗作业。若必须利用 V形天窗进行检修和故障处理或事故抢修时，应增设接地线，并在加强监护的情况下方准作业。</p></br>
                            <div>&nbsp;&nbsp;<label><input name="dux2" type="checkbox" value="雨" />&nbsp;A、</label>雨</div>
                            <div>&nbsp;&nbsp;<label><input name="dux2" type="checkbox" value="雪" />&nbsp;B、</label>雪</div>
                            <div>&nbsp;&nbsp;<label><input name="dux2" type="checkbox" value="雾" />&nbsp;C、</label>雾</div>
                            <div>&nbsp;&nbsp;<label><input name="dux2" type="checkbox" value="较热天气" />&nbsp;D、</label>较热天气</div>
                            <div>&nbsp;&nbsp;<label><input name="dux2" type="checkbox" value="炎热天气" />&nbsp;E、</label>炎热天气</div>
                        </h5>
                        </br>
                        <h5>
                            <p>1、遇有（ ）或风力在5级及以上恶劣天气时，一般不进行V形天窗作业。若必须利用 V形天窗进行检修和故障处理或事故抢修时，应增设接地线，并在加强监护的情况下方准作业。</p></br>
                            <div>&nbsp;&nbsp;<label><input name="dux3" type="checkbox" value="雨" />&nbsp;A、</label>雨</div>
                            <div>&nbsp;&nbsp;<label><input name="dux3" type="checkbox" value="雪" />&nbsp;B、</label>雪</div>
                            <div>&nbsp;&nbsp;<label><input name="dux3" type="checkbox" value="雾" />&nbsp;C、</label>雾</div>
                            <div>&nbsp;&nbsp;<label><input name="dux3" type="checkbox" value="较热天气" />&nbsp;D、</label>较热天气</div>
                            <div>&nbsp;&nbsp;<label><input name="dux3" type="checkbox" value="炎热天气" />&nbsp;E、</label>炎热天气</div>
                        </h5>
                        </br>

                    </div>
                </div>
                <div class="row bk"><h2>判断题</h2>
                    <div>

                        <h5>
                            <p>1、等价类法和边界值着重考虑输入条件，而不考虑输入条件的各种组合，也不考虑输入条件之间的相互制约关系。</p></br>
                            <div>&nbsp;&nbsp;<label><input name="pd1" type="radio" value="true" /></label>对</div>
                            <div>&nbsp;&nbsp;<label><input name="pd1" type="radio" value="false" /></label>错</div>

                        </h5>
                        </br>

                        <h5>
                            <p>1、等价类法和边界值着重考虑输入条件，而不考虑输入条件的各种组合，也不考虑输入条件之间的相互制约关系。</p></br>
                            <div>&nbsp;&nbsp;<label><input name="pd2" type="radio" value="true" /></label>对</div>
                            <div>&nbsp;&nbsp;<label><input name="pd2" type="radio" value="false" /></label>错</div>

                        </h5>
                        </br>
                        <h5>
                            <p>1、等价类法和边界值着重考虑输入条件，而不考虑输入条件的各种组合，也不考虑输入条件之间的相互制约关系。</p></br>
                            <div>&nbsp;&nbsp;<label><input name="pd3" type="radio" value="true" /></label>对</div>
                            <div>&nbsp;&nbsp;<label><input name="pd3" type="radio" value="false" /></label>错</div>

                        </h5>
                        </br>
                        <h5>
                            <p>1、等价类法和边界值着重考虑输入条件，而不考虑输入条件的各种组合，也不考虑输入条件之间的相互制约关系。</p></br>
                            <div>&nbsp;&nbsp;<label><input name="pd4" type="radio" value="true" /></label>对</div>
                            <div>&nbsp;&nbsp;<label><input name="pd4" type="radio" value="false" /></label>错</div>

                        </h5>
                        </br>
                    </div>
                </div>
                <div class="row bk"><h2>填空题</h2>
                    <div>
                        <h5>
                            <p>1、等价类法和边界值着重考虑输入条件，而不考虑输入条件的各种组合，也不考虑输入条件之间的相互制约关系。</p></br>
                            <textarea cols="120" rows="15" name="tk1" placeholder="请输入你的答案"></textarea>

                        </h5>
                        </br>
                        <h5>
                            <p>1、等价类法和边界值着重考虑输入条件，而不考虑输入条件的各种组合，也不考虑输入条件之间的相互制约关系。</p></br>
                            <textarea cols="120" rows="15" name="tk2" placeholder="请输入你的答案"></textarea>

                        </h5>
                        </br>
                        <h5>
                            <p>1、等价类法和边界值着重考虑输入条件，而不考虑输入条件的各种组合，也不考虑输入条件之间的相互制约关系。</p></br>
                            <textarea cols="120" rows="15" name="tk3" placeholder="请输入你的答案"></textarea>

                        </h5>
                        </br>

                    </div>
                </div>
                <div class="row bk"><h2>综合题</h2>
                    <div>
                        <h5>
                            <p>1、等价类法和边界值着重考虑输入条件，而不考虑输入条件的各种组合，也不考虑输入条件之间的相互制约关系。</p></br>
                            <textarea cols="120" rows="15" name="tk3" placeholder="请输入你的答案"></textarea>

                        </h5>
                        </br>
                        <h5>
                            <p>1、等价类法和边界值着重考虑输入条件，而不考虑输入条件的各种组合，也不考虑输入条件之间的相互制约关系。</p></br>
                            <textarea cols="120" rows="15" name="tk3" placeholder="请输入你的答案"></textarea>

                        </h5>
                        </br>
                        <h5>
                            <p>1、等价类法和边界值着重考虑输入条件，而不考虑输入条件的各种组合，也不考虑输入条件之间的相互制约关系。</p></br>
                            <textarea cols="120" rows="15" name="tk3" placeholder="请输入你的答案"></textarea>

                        </h5>
                        </br>
                    </div>
                </div>
                <div style="text-align: center;">
                    <input type="submit" value="提交">
                </div>

            </form>
        </div>
    </div>
</div>


<!-- 全局js -->
<script src="../../resources/js/jquery.min.js?v=2.1.4"></script>
<script src="../../resources/js/bootstrap.min.js?v=3.3.6"></script>



<script src="../../resources/js/plugins/jeditable/jquery.jeditable.js"></script>

<!-- Data Tables -->
<script src="../../resources/js/plugins/dataTables/jquery.dataTables.js"></script>
<script src="../../resources/js/plugins/dataTables/dataTables.bootstrap.js"></script>

<!-- 自定义js -->
<script src="../../resources/js/content.js?v=1.0.0"></script>


</body>
</html>
