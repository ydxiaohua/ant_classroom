<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/05/15
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
<a href="javascript:tianjia()" class="btn btn-success" role="button">添加</a>
<table class="table" id="daan" border="1"></table>

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
<script type="text/javascript">

    $("#daan").bootstrapTable({
        url:"<%=request.getContextPath()%>/kcmuser/querydaanList",
        striped: true,//隔行变色
        showPaginationSwitch:true,//是否显示 数据条数选择框
        minimumCountColumns:1,//最小留下一个
        showRefresh:true,//显示刷新按钮
        showToggle:true,//显示切换视图
        pagination:true,//开启分页
        paginationLoop:true,//开启分页无限循环
        pageNumber:1,//当前页数
        pageSize:3,//每页条数
        pageList:[1,3,5],//如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
        method:'post',//发送请求的方式
        contentType:"application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
        columns:[
            {field:'aa',title:'复选',width: 100},
            {field:'resultid',title:'答案id',width: 100},
            {field:'questionname',title:'问题名称',width: 100},
            {field:'resultcontent',title:'答案内容',width: 100},
            {field:'peoplename',title:'回答人id ',width: 100},
            {field:'resultdate',title:'回答时间',width: 50},
            {field:'beizancode',title:'被赞数量',width: 150},
            {field:'act',title:'操作',width:200,
                formatter: function(value,row,index){
                    return '<a href="javascript:shanchudaan('+row.resultid+')" class="btn btn-danger" role="button">删除答案</a><a href="javascript:xiugaidaan('+row.resultid+')" class="btn btn-warning" role="button">修改答案</a>';
                }
            },
        ]
    })

    function tianjia(){
        BootstrapDialog.show({
            title: '添加答案信息',
            keyboard:true,
            message: $('<div></div>').load('<%=request.getContextPath()%>/kcm/adddaan.jsp'),
            buttons: [{
                label: '保存',
                action: function() {
                    $.ajax({
                        type:"post",
                        url:"<%=request.getContextPath()%>/kcmuser/adddaan",
                        data:$("#adddaanform").serialize(),
                        success:function(){
                            alert("成功")
                            location.reload(true);
                        }
                    })
                },
            },{
                label: '关闭',
                action:function(result) {
                    result.close();
                }
            }]
        })
    }

    function shanchudaan(id){
        BootstrapDialog.show({
            title:'',
            message: "你确定要删除这条信息吗？",
            buttons: [{
                label: '确定',
                action: function() {
                    $.ajax({
                        url:"<%=request.getContextPath()%>/kcmuser/deletedaan",
                        type:"post",
                        data:{"id":id},
                        success:function(result){
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
    function xiugaidaan(id){
        BootstrapDialog.show({
            title: '修改答案信息',
            message: $('<div></div>').load('<%=request.getContextPath()%>/kcmuser/huixiandaan?id='+id),
            buttons: [{
                label: '保存',
                action: function() {
                    $.ajax({
                        url:"<%=request.getContextPath()%>/kcmuser/updatedaan",
                        type:"post",
                        data:$("#upwenform").serialize(),
                        success:function(result){
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
</script>
</body>
</html>
