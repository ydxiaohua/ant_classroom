<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>评论信息</title>

    <!-- Bootstrap 插件 css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- Bootstrap 核心css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap TreeView css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap-treeview/dist/bootstrap-treeview.min.css" rel="stylesheet">
    <!-- Bootstrap addTabs css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootStrap-addTabs/bootstrap.addtabs.css" rel="stylesheet">
    <!-- Bootstrap table css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap-table/dist/bootstrap-table.css" rel="stylesheet">
    <!-- bootstrap-datetimepicker css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css" rel="stylesheet">
    <!-- bootstrap-dialog css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap-dialog/dist/css/bootstrap-dialog.css" rel="stylesheet">
    <!-- bootstrap-fileinput css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap-fileinput/css/fileinput.css" rel="stylesheet">

</head>
<body>



<br>
<form class="form-inline" id="conn">
<%--@declare id="inputemail3"--%>
<a href="javascript:insertcomment()" class="btn btn-success" role="button">添加</a><br>
    &nbsp;&nbsp;
    <div class="form-group">
        <%--@declare id="exampleinputname2"--%>
            <label for="exampleInputName2"></label>
        评论内容:<input type="text" class="form-control" id="plnr" name="comcontent">
    </div>
    &nbsp;
    <div class="form-group">
        <label for="exampleInputName2"></label>
        创建时间:<a class='input-group date' id='datetimepicker1' >
        <input onclick="Datetime()" type='text' name="startcomdate" class="form-control" id='startdate' style="width: 150px; height: 30px;" />
                <span class="input-group-addon" style="float: left; width: 50px; height: 30px;">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
        </a>
        到:<a class='input-group date' id='datetimepicker2' >
        <input onclick="Datetime2()" type='text' name="endcomdate" class="form-control" id='enddate' style="width: 150px; height: 30px;" />
                <span class="input-group-addon" style="float: left; width: 50px; height: 30px;">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
        </a>
    </div>
    &nbsp;
    <div class="form-group">
        <%--@declare id="exampleinputname2"--%>
        <label for="exampleInputName2"></label>
        课程名称:<input type="text" class="form-control" id="kcmc" name="courseid">
    </div>
    &nbsp;
    <a href="javascript:search()" class="btn btn-success" role="button">查询</a>
<br><br>

</form>


<table class="table" id="comment" border="1"></table>


<!--jQuery核心js  -->
<script src="<%=request.getContextPath() %>/bootstrap/jquery.min.js"></script>
<!-- bootstrap 核心js文件 -->
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap/js/bootstrap.min.js"></script>
<!-- bootStrap TreeView -->
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
<!-- bootStrap addTabs -->
<script src="<%=request.getContextPath() %>/bootstrap/bootStrap-addTabs/bootstrap.addtabs.js"></script>
<!-- bootStrap table -->
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-table/dist/bootstrap-table.js"></script>
<!-- bootStrap table 语言包中文-->
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>
<!-- bootstrap-datetimepicker -->
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<!-- bootstrap-dialog -->
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-dialog/dist/js/bootstrap-dialog.js"></script>
<!-- bootstrap-fileinput -->
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-fileinput/js/fileinput.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-fileinput/js/locales/zh.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>

<script type="text/javascript">

    function search(){
        $("#comment").bootstrapTable("refresh",{'pageNumber':1});
    }

    //查询
    $("#comment").bootstrapTable({
        url:"<%=request.getContextPath()%>/comm/queryComment",
        striped: true,//隔行变色
        showPaginationSwitch:false,//是否显示 数据条数选择框
        minimumCountColumns:1,//最小留下一个
        showRefresh:false,//显示刷新按钮
        showToggle:false,//显示切换视图
        //search:true,//是否显示搜索框
        searchOnEnterKey:true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方
        //bootstrap默认是客户端分页client 若写服务端则出不来结果server
        sidePagination:"",//
        pagination:true,//开启分页
        height:450,
        paginationLoop:true,//开启分页无限循环
        pageNumber:1,//当前页数
        pageSize:3,//每页条数
        pageList:[1,3,5],//如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
        method:'post',//发送请求的方式
        contentType:"application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
        queryParams:function(param){

            return {
                'comcontent':$("#plnr").val(),
                'startcomdate':$("#startdate").val(),
                'endcomdate':$("#enddate").val(),
                'courseid':$("#kcmc").val(),
                page:this.pageNumber,//当前页
                rows:this.pageSize //每页条数
            }
        },
        columns:[
            {field:'comcontent',title:'评论内容',width: 50},
            {field:'comdate',title:'创建时间',width: 50},
            {field:'comcode',title:'点赞数量',width: 50},
            {field:'courseid',title:'课程名称',width: 50},
            {field:'peopleid',title:'评论人名称',width: 50},
            {field:'act',title:'操作',width:100,
                formatter: function(value,row,index){
                    return "<a href='javascript:deletecommon(\""+row.comcontent+"\")' class='btn btn-danger' role='button'>删除</a>";
                }
            }
        ]
    })



    //删除
    function deletecommon(comcontent){
        BootstrapDialog.show({
            title:'',
            message: "你确定要删除这条评论吗？",
            buttons: [{
                label: '确定',
                action: function() {
                    $.ajax({
                        url:"<%=request.getContextPath()%>/comm/deletecommon?comcontent="+comcontent,
                        type:"post",
                        success:function(result){
                            alert(result);
                            location.reload();
                        }
                    })
                }
            },{
                label: '取消',
                action:function(result) {
                    result.close();
                }
            }]
        })
    }

    //添加
    function insertcomment(){
        BootstrapDialog.show({
            title: '添加评论',
            message: $('<div></div>').load('<%=request.getContextPath()%>/twl/addcomment.jsp'),
            buttons: [{
                label: '添加',
                action: function() {
                    $.ajax({
                        url:"<%=request.getContextPath()%>/comm/addComment",
                        type:"post",
                        data:$("#addComForm").serialize(),
                        success:function(result){
                            alert("添加成功!");
                            location.reload();
                        }
                    })
                }
            },{
                label: '取消',
                action:function(result) {
                    result.close();
                }
            }]
        })
    }





    //时间
    function Datetime() {
        $('#datetimepicker1').datetimepicker({
            language: 'zh-CN',//显示中文
            format: 'yyyy-mm-dd',//显示格式
            minView: "month",//设置只显示到月份
            initialDate: new Date(),
            autoclose: true,//选中自动关闭
            todayBtn: true,//显示今日按钮
        });
        //默认获取当前日期
        var today = new Date();
        var nowdate = (today.getFullYear()) + "-" + (today.getMonth() + 1) + "-" + today.getDate();
        //对日期格式进行处理
        var date = new Date(nowdate);
        var mon = date.getMonth() + 1;
        var day = date.getDate();
        var mydate = date.getFullYear() + "-" + (mon < 10 ? "0" + mon : mon) + "-" + (day < 10 ? "0" + day : day);
        document.getElementById("startdate").value = mydate;
    }
    function Datetime2() {
        $('#datetimepicker2').datetimepicker({
            language: 'zh-CN',//显示中文
            format: 'yyyy-mm-dd',//显示格式
            minView: "month",//设置只显示到月份
            initialDate: new Date(),
            autoclose: true,//选中自动关闭
            todayBtn: true,//显示今日按钮
        });
        //默认获取当前日期
        var today = new Date();
        var nowdate = (today.getFullYear()) + "-" + (today.getMonth() + 1) + "-" + today.getDate();
        //对日期格式进行处理
        var date = new Date(nowdate);
        var mon = date.getMonth() + 1;
        var day = date.getDate();
        var mydate = date.getFullYear() + "-" + (mon < 10 ? "0" + mon : mon) + "-" + (day < 10 ? "0" + day : day);
        document.getElementById("enddate").value = mydate;
    }
</script>
</body>
</html>
