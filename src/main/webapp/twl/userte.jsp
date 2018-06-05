<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆日志</title>

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

<table class="table" id="userate" border="1"></table>


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

    //查询
    $("#userate").bootstrapTable({
        url:"<%=request.getContextPath()%>/comm/queryuserte",
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
        /*queryParams:function(param){

         return {
         'comcontent':$("#plnr").val(),
         'startcomdate':$("#startdate").val(),
         'endcomdate':$("#enddate").val(),
         'courseid':$("#kcmc").val(),
         page:this.pageNumber,//当前页
         rows:this.pageSize //每页条数
         }
         },*/
        columns:[
            {field:'name',title:'登录用户名称',width: 100}
        ]
    })

</script>

</body>
</html>
